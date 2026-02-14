#include <lib/debug.h>
#include <pmm/MATIntro/export.h>
#include "export.h"

// Correcting the reference to match your export.h
// Note the 'struct' keyword before ATStruct
extern struct ATStruct AT[]; 

#define PAGESIZE     4096
#define VM_USERLO    0x40000000
#define VM_USERHI    0xF0000000
#define VM_USERLO_PI (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI (VM_USERHI / PAGESIZE)

#define SUPERPAGE_ORDER 10

// #define SUPERPAGE_ORDER 9

int MATOp_test1()
{
    int page_index = palloc();
    if (page_index < VM_USERLO_PI || VM_USERHI_PI <= page_index) {
        dprintf("test 1.1 failed: (%d < VM_USERLO_PI || VM_USERHI_PI <= %d)\n", page_index, page_index);
        pfree(page_index);
        return 1;
    }
    if (at_is_norm(page_index) != 1) {
        dprintf("test 1.2 failed: (%d != 1)\n", at_is_norm(page_index));
        pfree(page_index);
        return 1;
    }
    if (at_is_allocated(page_index) != 1) {
        dprintf("test 1.3 failed: (%d != 1)\n", at_is_allocated(page_index));
        pfree(page_index);
        return 1;
    }
    pfree(page_index);
    if (at_is_allocated(page_index) != 0) {
        dprintf("test 1.4 failed: (%d != 0)\n", at_is_allocated(page_index));
        return 1;
    }
    dprintf("test 1 passed.\n");
    return 0;
}

// Ownership test to verify buddy system contiguous properties
int MATOp_test_own()
{
    dprintf("Testing buddy contiguous allocation (Order 2)...\n");
    int order = 2;
    int pindex = palloc_order(order); // You'll need to add this to your export.h or export it
    
    if (pindex <= 0) {
        dprintf("Buddy allocation failed.\n");
        return 1;
    }

    // Accessing AT[pindex].order now works because of the extern struct ATStruct AT[]
    if (AT[pindex].order != order) {
        dprintf("test own failed: Order mismatch. Expected %d, got %d\n", order, AT[pindex].order);
        return 1;
    }

    pfree(pindex);
    dprintf("Buddy contiguous test passed.\n");
    return 0;
}

int test_MATOp()
{
    return MATOp_test1() 
         + MATOp_test_own()
         + MATOp_test_superpage();
}


//superpage allocation test

int MATOp_test_superpage()
{
    dprintf("Testing superpage allocation (Order 10)...\n");

    int pindex = palloc_superpage();

    if (pindex == 0) {
        dprintf("Superpage allocation failed.\n");
        return 1;
    }

    // Check range
    if (pindex < VM_USERLO_PI || VM_USERHI_PI <= pindex) {
        dprintf("Superpage test failed: invalid range.\n");
        return 1;
    }

    //Check alignment (must be 1024-page aligned)
    unsigned int pages = 1U << SUPERPAGE_ORDER;
    if ((pindex & (pages - 1)) != 0) {
        dprintf("Superpage test failed: not properly aligned.\n");
        return 1;
    }

    //Check order metadata
    if (AT[pindex].order != SUPERPAGE_ORDER) {
        dprintf("Superpage test failed: wrong order. Expected %d, got %d\n",
                SUPERPAGE_ORDER, AT[pindex].order);
        return 1;
    }

    //Check all 1024 pages allocated
    for (unsigned int i = 0; i < pages; i++) {
        if (at_is_allocated(pindex + i) != 1) {
            dprintf("Superpage test failed: page %u not allocated.\n", i);
            return 1;
        }
    }

    // Free
    pfree_superpage(pindex);

    //Check pages freed
    for (unsigned int i = 0; i < pages; i++) {
        if (at_is_allocated(pindex + i) != 0) {
            dprintf("Superpage test failed: page %u not freed.\n", i);
            return 1;
        }
    }

    dprintf("Superpage test passed.\n");
    return 0;
}
