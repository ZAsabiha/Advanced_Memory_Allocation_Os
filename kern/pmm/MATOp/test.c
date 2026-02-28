#include <lib/debug.h>
#include <pmm/MATIntro/export.h>
#include "export.h"

// Access the Allocation Table structure defined in MATIntro
extern struct ATStruct AT[]; 

#define PAGESIZE      4096
#define VM_USERLO     0x40000000
#define VM_USERHI     0xF0000000
#define VM_USERLO_PI  (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI  (VM_USERHI / PAGESIZE)

#define SUPERPAGE_ORDER 10

/**
 * Standard allocation and free test for 4KB pages.
 */
int MATOp_test1()
{
    int page_index = palloc();
    if (page_index < (int)VM_USERLO_PI || (int)VM_USERHI_PI <= page_index) {
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

/**
 * Ownership test to verify buddy system contiguous properties.
 */
int MATOp_test_own()
{
    dprintf("Testing buddy contiguous allocation (Order 2)...\n");
    int order = 2;
    int pindex = palloc_order(order); 
    
    if (pindex <= 0) {
        dprintf("Buddy allocation failed.\n");
        return 1;
    }

    if ((int)AT[pindex].order != order) {
        dprintf("test own failed: Order mismatch. Expected %d, got %d\n", order, AT[pindex].order);
        return 1;
    }

    pfree(pindex);
    dprintf("Buddy contiguous test passed.\n");
    return 0;
}

/**
 * Advanced superpage allocation test (Uniqueness & Non-overlap).
 */
int MATOp_test_superpage_advanced()
{
    dprintf("Testing advanced superpage allocation...\n");

    unsigned int pages = 1U << SUPERPAGE_ORDER;

    // 1. First Allocation
    int pindex1 = palloc_superpage();
    if (pindex1 == 0) {
        dprintf("First superpage allocation failed.\n");
        return 1;
    }

    // 2. Second Allocation
    int pindex2 = palloc_superpage();
    if (pindex2 == 0) {
        dprintf("Second superpage allocation failed.\n");
        pfree_superpage(pindex1);
        return 1;
    }

    // 3. Verification: Uniqueness
    if (pindex1 == pindex2) {
        dprintf("Test failed: palloc_superpage returned the same index twice (%d).\n", pindex1);
        return 1;
    }

    // 4. Verification: No Overlap
    int diff = (pindex1 > pindex2) ? (pindex1 - pindex2) : (pindex2 - pindex1);
    if ((unsigned int)diff < pages) {
        dprintf("Test failed: Superpages overlap! Diff: %d, Required: %u\n", diff, pages);
        return 1;
    }

    // 5. Cleanup
    pfree_superpage(pindex1);
    pfree_superpage(pindex2);

    dprintf("Advanced superpage test passed.\n");
    return 0;
}

/**
 * FIX: Linker Wrapper
 * This satisfies the 'undefined reference to MATOp_test_superpage'
 */
int MATOp_test_superpage(void)
{
    return MATOp_test_superpage_advanced();
}

/**
 * Main test runner for MATOp.
 */
int test_MATOp()
{
    return MATOp_test1() 
         + MATOp_test_own()
         + MATOp_test_superpage();
}