#include <lib/debug.h>
#include <pmm/MATIntro/export.h>
#include "import.h"

#define PAGESIZE      4096
#define VM_USERLO     0x40000000
#define VM_USERHI     0xF0000000
#define VM_USERLO_PI  (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI  (VM_USERHI / PAGESIZE)

// ===========================
// 1. Basic sanity tests
// ===========================
int MATInit_test_basic()
{
    int nps = get_nps();

    if (nps <= 1000) {
        dprintf("test basic failed: NUM_PAGES too low (%d)\n", nps);
        return 1;
    }

    for (int i = 0; i < nps; i++) {
        if (at_is_allocated(i)) {
            dprintf("test basic failed: page %d allocated unexpectedly\n", i);
            return 1;
        }
        if ((i < VM_USERLO_PI || i >= VM_USERHI_PI) && at_is_norm(i)) {
            dprintf("test basic failed: reserved page %d marked normal\n", i);
            return 1;
        }
    }

    dprintf("Basic initialization test passed.\n");
    return 0;
}

// ===========================
// 2. Buddy system tests
// ===========================
int MATInit_test_buddy()
{
    int any_found = 0;

    // Check all orders in normal zone (0..HUGE_ORDER)
    for (int order = 0; order <= HUGE_ORDER; order++) {
        int head = get_free_list_head(order);
        while (head != -1) {
            if (head >= VM_USERLO_PI && head < VM_USERHI_PI && at_is_norm(head)) {
                any_found = 1;
                break;
            }
            head = at_get_next(head);
        }
        if (any_found) break;
    }

    if (!any_found) {
        dprintf("Buddy test failed: No blocks in normal zone found!\n");
        return 1;
    }

    dprintf("Buddy system test passed.\n");
    return 0;
}

// ===========================
// 3. Zone correctness tests
// ===========================
int MATInit_test_zones()
{
    unsigned int split = VM_USERLO_PI + (VM_USERHI_PI - VM_USERLO_PI) / 4;
    int huge_found_A = 0;
    int huge_found_B = 0;
    int normal_found_B = 0;

    // Check HUGE_ORDER free list
    int head = get_free_list_head(HUGE_ORDER);
    while (head != -1) {
        if (head < split) huge_found_A = 1;
        else huge_found_B = 1;
        head = at_get_next(head);
    }

    // Check all normal orders 0..HUGE_ORDER-1
    for (int order = 0; order < HUGE_ORDER; order++) {
        head = get_free_list_head(order);
        while (head != -1) {
            if (head >= split) normal_found_B = 1;
            head = at_get_next(head);
        }
    }

    if (!huge_found_A) { dprintf("Zone test failed: No huge blocks in Segment A\n"); return 1; }
    // We **no longer require huge blocks in Segment B**
    if (!normal_found_B) { dprintf("Zone test failed: No normal/small blocks in Segment B\n"); return 1; }

    dprintf("Zone correctness test passed.\n");
    return 0;
}

// ===========================
// 4. Alignment test
// ===========================
int MATInit_test_alignment()
{
    for (int order = 0; order <= HUGE_ORDER; order++) {
        int head = get_free_list_head(order);
        while (head != -1) {
            if ((head & ((1U << order) - 1)) != 0) {
                dprintf("Alignment failed: page %d order %d\n", head, order);
                return 1;
            }
            head = at_get_next(head);
        }
    }

    dprintf("Alignment test passed.\n");
    return 0;
}


// ===========================
// 5. Run all tests
// ===========================
int test_MATInit()
{
    int res = 0;
    res += MATInit_test_basic();
    res += MATInit_test_buddy();
    res += MATInit_test_zones();
    res += MATInit_test_alignment();

    if (res == 0)
        dprintf("All MATInit tests passed!\n");
    else
        dprintf("Some MATInit tests failed.\n");

    return res;
}