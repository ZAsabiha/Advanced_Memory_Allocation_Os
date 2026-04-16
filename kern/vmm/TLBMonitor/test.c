#include <lib/debug.h>
#include <lib/x86.h>
#include <pmm/MContainer/export.h>
#include <vmm/MPTComm/export.h>
#include <vmm/MPTKern/export.h>
#include "export.h"

int tlb_run_simple_test(void) {
    unsigned int proc_id;
    unsigned int vaddr_base = 0x40000000;
    unsigned int page_indices[10];
    int i;

    dprintf("\n=== Running Simple TLB Test ===\n");

    proc_id = container_split(0, 2000);
    if (proc_id == 0) {
        dprintf("Failed to create container\n");
        return 1;
    }

    tlb_reset_stats();

    dprintf("Allocating regular pages...\n");
    for (i = 0; i < 10; i++) {
        unsigned int vaddr = vaddr_base + (i * PAGESIZE);
        unsigned int pindex = container_alloc(proc_id);
        if (pindex == 0) {
            dprintf("Failed to allocate page at 0x%x\n", vaddr);
            return 1;
        }
        page_indices[i] = pindex;
        map_page(proc_id, vaddr, pindex, 7);
        tlb_access(proc_id, vaddr);
        tlb_access(proc_id, vaddr);
    }

    dprintf("Allocating superpage...\n");
    unsigned int super_vaddr = 0x80000000;
    if (alloc_superpage(proc_id, super_vaddr) == 0) {
        dprintf("Failed to allocate superpage\n");
        return 1;
    }

    for (i = 0; i < 10; i++) {
        unsigned int vaddr = super_vaddr + (i * PAGESIZE);
        tlb_access(proc_id, vaddr);
    }

    tlb_print_stats();

    for (i = 0; i < 10; i++) {
        unmap_page(proc_id, vaddr_base + (i * PAGESIZE));
        container_free(proc_id, page_indices[i]);
    }
    // free the page table itself
    free_ptbl(proc_id, vaddr_base);
    free_ptbl(proc_id, super_vaddr);

    dprintf("Simple test passed!\n");
    return 0;
}

int scenario_sequential_access(void) {
    unsigned int proc_id;
    unsigned int base_vaddr = 0x40000000;
    unsigned int page_indices[20];
    int i, j;

    dprintf("\n=== Scenario 1: Sequential Access ===\n");
    dprintf("Accessing memory sequentially with good locality\n");

    proc_id = container_split(0, 3000);
    if (proc_id == 0) {
        dprintf("Failed to create container\n");
        return 1;
    }

    unsigned int super_vaddr = 0x80000000;
    if (alloc_superpage(proc_id, super_vaddr) == 0) {
        dprintf("Failed to allocate superpage\n");
        return 1;
    }

    for (i = 0; i < 20; i++) {
        unsigned int vaddr = base_vaddr + i * PAGESIZE;
        unsigned int pindex = container_alloc(proc_id);
        if (pindex == 0) {
            dprintf("Failed to allocate page\n");
            return 1;
        }
        page_indices[i] = pindex;
        map_page(proc_id, vaddr, pindex, 7);
    }

    tlb_reset_stats();

    for (j = 0; j < 5; j++) {
        for (i = 0; i < 20; i++) {
            tlb_access(proc_id, super_vaddr + i * PAGESIZE);
        }
        for (i = 0; i < 20; i++) {
            tlb_access(proc_id, base_vaddr + i * PAGESIZE);
        }
    }

    dprintf("\nResults for Sequential Access:\n");
    tlb_print_stats();

    for (i = 0; i < 20; i++) {
        unmap_page(proc_id, base_vaddr + i * PAGESIZE);
        container_free(proc_id, page_indices[i]);
    }
    free_ptbl(proc_id, base_vaddr);
    free_ptbl(proc_id, super_vaddr);

    return 0;
}

int scenario_working_set(void) {
    unsigned int proc_id;
    int i, j;

    dprintf("\n=== Scenario 3: Working Set Size Comparison ===\n");

    proc_id = container_split(0, 5000);
    if (proc_id == 0) {
        dprintf("Failed to create container\n");
        return 1;
    }

    unsigned int super_vaddr1 = 0x40000000;
    unsigned int super_vaddr2 = 0x80000000;
    unsigned int super_vaddr3 = 0xC0000000;

    if (alloc_superpage(proc_id, super_vaddr1) == 0) {
        dprintf("Failed to allocate superpage 1\n");
        return 1;
    }
    if (alloc_superpage(proc_id, super_vaddr2) == 0) {
        dprintf("Failed to allocate superpage 2\n");
        return 1;
    }
    if (alloc_superpage(proc_id, super_vaddr3) == 0) {
        dprintf("Failed to allocate superpage 3\n");
        return 1;
    }

    dprintf("\nTest A: Small working set (64KB)\n");
    tlb_reset_stats();
    for (j = 0; j < 10; j++) {
        for (i = 0; i < 16; i++) {
            tlb_access(proc_id, super_vaddr1 + i * PAGESIZE);
        }
    }
    tlb_print_stats();

    dprintf("\nTest B: Medium working set (2MB)\n");
    tlb_reset_stats();
    for (j = 0; j < 5; j++) {
        for (i = 0; i < 512; i += 32) {
            tlb_access(proc_id, super_vaddr1 + i * PAGESIZE);
            tlb_access(proc_id, super_vaddr2 + i * PAGESIZE);
        }
    }
    tlb_print_stats();

    dprintf("\nTest C: Large working set (12MB)\n");
    tlb_reset_stats();
    for (j = 0; j < 3; j++) {
        for (i = 0; i < 1024; i += 8) {
            tlb_access(proc_id, super_vaddr1 + i * PAGESIZE);
            tlb_access(proc_id, super_vaddr2 + i * PAGESIZE);
            tlb_access(proc_id, super_vaddr3 + i * PAGESIZE);
        }
    }
    tlb_print_stats();

    free_ptbl(proc_id, super_vaddr1);
    free_ptbl(proc_id, super_vaddr2);
    free_ptbl(proc_id, super_vaddr3);

    return 0;
}

int scenario_superpage_comparison(void) {
    unsigned int proc_id;
    unsigned int page_indices[64];
    int i, j;
    int num_pages = 64;

    dprintf("\n=== Scenario 4: Superpage vs Regular Page Performance ===\n");

    proc_id = container_split(0, 5000);
    if (proc_id == 0) {
        dprintf("Failed to create container\n");
        return 1;
    }

    dprintf("\nTest A: Regular pages (4KB each):\n");
    unsigned int reg_base = 0x40000000;
    dprintf("Allocating %d regular pages...\n", num_pages);

    for (i = 0; i < num_pages; i++) {
        unsigned int vaddr = reg_base + i * PAGESIZE;
        unsigned int pindex = container_alloc(proc_id);
        if (pindex == 0) {
            dprintf("Failed to allocate page at 0x%x\n", vaddr);
            for (j = 0; j < i; j++) {
                unmap_page(proc_id, reg_base + j * PAGESIZE);
                container_free(proc_id, page_indices[j]);
            }
            return 1;
        }
        page_indices[i] = pindex;
        map_page(proc_id, vaddr, pindex, 7);
    }

    tlb_reset_stats();
    for (j = 0; j < 10; j++) {
        for (i = 0; i < num_pages; i += 4) {
            tlb_access(proc_id, reg_base + i * PAGESIZE);
        }
    }
    tlb_print_stats();

    for (i = 0; i < num_pages; i++) {
        unmap_page(proc_id, reg_base + i * PAGESIZE);
        container_free(proc_id, page_indices[i]);
    }
    free_ptbl(proc_id, reg_base);

    dprintf("\nTest B: Superpages (4MB each):\n");
    unsigned int super_base = 0x80000000;
    if (alloc_superpage(proc_id, super_base) == 0) {
        dprintf("Failed to allocate superpage\n");
        return 1;
    }

    tlb_reset_stats();
    for (j = 0; j < 10; j++) {
        for (i = 0; i < num_pages; i += 4) {
            tlb_access(proc_id, super_base + i * PAGESIZE);
        }
    }
    tlb_print_stats();

    free_ptbl(proc_id, super_base);

    dprintf("\n** Key Observation: Superpages should show much higher hit ratio **\n");
    dprintf("** because one TLB entry covers 4MB (1024 pages) vs 4KB (1 page) **\n");

    return 0;
}

int tlb_run_scenario_test(void) {
    int error = 0;

    dprintf("\n========================================\n");
    dprintf("TLB MONITOR SCENARIO TESTS\n");
    dprintf("========================================\n");

    error += scenario_sequential_access();
    error += scenario_working_set();
    error += scenario_superpage_comparison();

    if (error == 0) {
        dprintf("\n✓ All scenario tests completed successfully!\n");
    } else {
        dprintf("\n✗ Scenario tests failed with %d errors\n", error);
    }

    return error;
}

int test_TLBMonitor(void) {
    int error = 0;

    tlb_monitor_init();

    error += tlb_run_simple_test();
    error += tlb_run_scenario_test();

    if (error == 0) {
        dprintf("\n✓ ALL TLB MONITOR TESTS PASSED!\n");
    } else {
        dprintf("\n✗ TLB MONITOR TESTS FAILED WITH %d ERRORS\n", error);
    }

    return error;
}