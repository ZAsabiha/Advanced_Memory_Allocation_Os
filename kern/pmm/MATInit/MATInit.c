#include <lib/debug.h>
#include <pmm/MATIntro/export.h>
#include "import.h"

#define MAX_ORDER 11

#define PAGESIZE      4096
#define VM_USERLO     0x40000000
#define VM_USERHI     0xF0000000
#define VM_USERLO_PI  (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI  (VM_USERHI / PAGESIZE)

#define HUGE_ORDER 10
#define HUGE_SIZE  (1U << HUGE_ORDER)

static int is_block_free_normal(unsigned int base, unsigned int order)
{
    unsigned int number_of_pages = 1U << order;
    unsigned int i;

    if (base < VM_USERLO_PI)
        return 0;

    if (base + number_of_pages > VM_USERHI_PI)
        return 0;

    for (i = 0; i < number_of_pages; i++) {
        unsigned int pi = base + i;
        if (AT[pi].perm != 2 || AT[pi].allocated != 0)
            return 0;
    }

    return 1;
}

void pmem_init(unsigned int mbi_addr)
{
    unsigned int i, j;
    unsigned int highest_addr = 0;

    devinit(mbi_addr);
    unsigned int n_entries = get_size();

    for (i = 0; i < n_entries; i++) {
        unsigned int end = get_mms(i) + get_mml(i);
        if (end > highest_addr)
            highest_addr = end;
    }

    unsigned int phys_nps = highest_addr / PAGESIZE;

    set_nps(VM_USERHI_PI);
    pmm_init_freelists();

    for (i = 0; i < get_nps(); i++) {
        at_set_allocated(i, 0);
        at_set_perm(i, 0);
        AT[i].next = -1;
        AT[i].prev = -1;
        AT[i].order = 0;
    }

    for (i = 0; i < VM_USERLO_PI; i++)
        at_set_perm(i, 1);

    for (i = VM_USERLO_PI; i < VM_USERHI_PI; i++) {

        unsigned int phys_pi = i - VM_USERLO_PI;

        if (phys_pi >= phys_nps) {
            at_set_perm(i, 0);
            continue;
        }

        unsigned int paddr_start = phys_pi * PAGESIZE;
        unsigned int paddr_end   = paddr_start + PAGESIZE;

        int is_ram = 0;

        for (j = 0; j < n_entries; j++) {

            if (!is_usable(j))
                continue;

            unsigned int start = get_mms(j);
            unsigned int end   = start + get_mml(j);

            if (start <= paddr_start && paddr_end <= end) {
                is_ram = 1;
                break;
            }
        }

        if (is_ram) {
            at_set_perm(i, 2);
            at_set_allocated(i, 0);
        } else {
            at_set_perm(i, 0);
        }
    }

    unsigned int split =
        VM_USERLO_PI +
        (VM_USERHI_PI - VM_USERLO_PI) / 4;

    /*
     * ============================
     * SEGMENT A: Huge blocks only
     * ============================
     */

    i = VM_USERLO_PI;

    while (i + HUGE_SIZE <= split) {

        if (AT[i].perm != 2 || AT[i].allocated != 0) {
            i++;
            continue;
        }

        if ((i & (HUGE_SIZE - 1)) != 0) {
            i++;
            continue;
        }

        if (is_block_free_normal(i, HUGE_ORDER)) {

            AT[i].order = HUGE_ORDER;
            at_list_add(HUGE_ORDER, i);

            i += HUGE_SIZE;
        } else {
            i++;
        }
    }

    /*
     * ============================
     * SEGMENT B: Normal buddy
     * ============================
     */

    i = split;

    while (i < VM_USERHI_PI) {

        if (AT[i].perm != 2 || AT[i].allocated != 0) {
            i++;
            continue;
        }

        int order;

        for (order = MAX_ORDER - 1; order >= 0; order--) {

            unsigned int size = 1U << order;

            if ((i & (size - 1)) != 0)
                continue;

            if (is_block_free_normal(i, (unsigned int)order))
                break;
        }

        if (order < 0) {
            i++;
            continue;
        }

        AT[i].order = (unsigned int)order;
        at_list_add((unsigned int)order, i);

        i += (1U << order);
    }
}
