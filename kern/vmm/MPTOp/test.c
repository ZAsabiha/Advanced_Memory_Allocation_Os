#include <lib/debug.h>
#include "export.h"

int MPTOp_test1()
{

    dprintf("MPTOp Layer TEST\n");
    unsigned int vaddr = 4096 * 1024 * 300;
    if (get_ptbl_entry_by_va(10, vaddr) != 0) {
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(10, vaddr) != 0) {
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
        return 1;
    }
    set_pdir_entry_by_va(10, vaddr, 100);
    set_ptbl_entry_by_va(10, vaddr, 100, 259);
    if (get_ptbl_entry_by_va(10, vaddr) == 0) {
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(10, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(10, vaddr) == 0) {
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(10, vaddr));
        return 1;
    }
    rmv_ptbl_entry_by_va(10, vaddr);
    rmv_pdir_entry_by_va(10, vaddr);
    if (get_ptbl_entry_by_va(10, vaddr) != 0) {
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(10, vaddr) != 0) {
        dprintf("test 1.6 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
        return 1;
    }
    dprintf("test 1 passed.\n");
    return 0;
}

/**
 * Write Your Own Test Script (optional)
 *
 * Come up with your own interesting test cases to challenge your classmates!
 * In addition to the provided simple tests, selected (correct and interesting) test functions
 * will be used in the actual grading of the lab!
 * Your test function itself will not be graded. So don't be afraid of submitting a wrong script.
 *
 * The test function should return 0 for passing the test and a non-zero code for failing the test.
 * Be extra careful to make sure that if you overwrite some of the kernel data, they are set back to
 * the original value. O.w., it may make the future test scripts to fail even if you implement all
 * the functions correctly.
 */
int MPTOp_test_own()
{
    unsigned int vaddr, pde, pte;

    /* ── Test A: Basic VA decomposition ──────────────────────────
     * Two addresses in the same 4MB region (same PDE) but different
     * 4KB slots (different PTE). They must map to different entries.
     * 0x40000000 → pde=256, pte=0
     * 0x40001000 → pde=256, pte=1
     */
    set_pdir_entry_by_va(5, 0x40000000, 200);
    set_ptbl_entry_by_va(5, 0x40000000, 300, 7);
    set_ptbl_entry_by_va(5, 0x40001000, 301, 7);

    if (get_ptbl_entry_by_va(5, 0x40000000) ==
        get_ptbl_entry_by_va(5, 0x40001000)) {
        dprintf("own A failed: adjacent PTEs in same page table collided\n");
        rmv_ptbl_entry_by_va(5, 0x40000000);
        rmv_ptbl_entry_by_va(5, 0x40001000);
        rmv_pdir_entry_by_va(5, 0x40000000);
        return 1;
    }
    rmv_ptbl_entry_by_va(5, 0x40000000);
    rmv_ptbl_entry_by_va(5, 0x40001000);
    rmv_pdir_entry_by_va(5, 0x40000000);

    /* ── Test B: Different PDE regions are independent ───────────
     * 0x40000000 → pde=256
     * 0x40400000 → pde=257  (next 4MB region)
     * Writing to one must not affect the other.
     */
    set_pdir_entry_by_va(5, 0x40000000, 200);
    set_ptbl_entry_by_va(5, 0x40000000, 300, 7);

    if (get_pdir_entry_by_va(5, 0x40400000) != 0) {
        dprintf("own B failed: adjacent PDE region is not zero\n");
        rmv_ptbl_entry_by_va(5, 0x40000000);
        rmv_pdir_entry_by_va(5, 0x40000000);
        return 1;
    }
    rmv_ptbl_entry_by_va(5, 0x40000000);
    rmv_pdir_entry_by_va(5, 0x40000000);

    /* ── Test C: Cross-process isolation ─────────────────────────
     * A mapping in proc 6 must be invisible to proc 7.
     */
    vaddr = 0x50000000;
    set_pdir_entry_by_va(6, vaddr, 400);
    set_ptbl_entry_by_va(6, vaddr, 500, 7);

    if (get_pdir_entry_by_va(7, vaddr) != 0 ||
        get_ptbl_entry_by_va(7, vaddr) != 0) {
        dprintf("own C failed: proc 6 mapping leaked into proc 7\n");
        rmv_ptbl_entry_by_va(6, vaddr);
        rmv_pdir_entry_by_va(6, vaddr);
        return 1;
    }
    rmv_ptbl_entry_by_va(6, vaddr);
    rmv_pdir_entry_by_va(6, vaddr);

    /* ── Test D: rmv_ptbl_entry_by_va clears PTE, keeps PDE ──────
     * After removing the PTE, the PDE must still be intact.
     * This verifies rmv only touches the second level.
     */
    vaddr = 0x60000000;
    set_pdir_entry_by_va(5, vaddr, 600);
    set_ptbl_entry_by_va(5, vaddr, 700, 7);
    pde = get_pdir_entry_by_va(5, vaddr);

    rmv_ptbl_entry_by_va(5, vaddr);

    if (get_pdir_entry_by_va(5, vaddr) != pde) {
        dprintf("own D failed: rmv_ptbl_entry_by_va also wiped the PDE\n");
        rmv_pdir_entry_by_va(5, vaddr);
        return 1;
    }
    if (get_ptbl_entry_by_va(5, vaddr) != 0) {
        dprintf("own D failed: PTE still non-zero after rmv\n");
        rmv_pdir_entry_by_va(5, vaddr);
        return 1;
    }
    rmv_pdir_entry_by_va(5, vaddr);

    /* ── Test E: get_ptbl_entry_by_va returns 0 for absent PDE ───
     * If no PDE exists, get_ptbl must return 0 without crashing.
     * This tests the early-exit guard in get_ptbl_entry_by_va.
     */
    if (get_pdir_entry_by_va(9, 0x90000000) == 0) {
        if (get_ptbl_entry_by_va(9, 0x90000000) != 0) {
            dprintf("own E failed: expected 0 for unmapped VA, got non-zero\n");
            return 1;
        }
    }

 
    rmv_pdir_entry_by_va(5, vaddr);

    dprintf("own test passed.\n");
    return 0;
}

int test_MPTOp()
{
    return MPTOp_test1() + MPTOp_test_own();
}

