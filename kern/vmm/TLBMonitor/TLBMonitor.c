#include <lib/x86.h>
#include <lib/debug.h>
#include <lib/types.h>
#include "import.h"
#include "export.h"

// TLB Configuration
#define TLB_ENTRIES 64          // Typical TLB size
#define TLB_SUPERPAGE_ENTRIES 16 // Separate superpage TLB (often larger)

// TLB entry structure
struct tlb_entry {
    unsigned int proc_id;
    unsigned int vaddr_start;    // Starting virtual address
    unsigned int paddr_start;     // Starting physical address
    unsigned int size;           // Page size (PAGESIZE or SUPERPAGE_SIZE)
    unsigned int valid;
    unsigned int last_used;       // For LRU replacement
    unsigned int is_superpage;    // Flag for superpage entry
};

// Separate TLBs for regular pages and superpages
static struct tlb_entry regular_tlb[TLB_ENTRIES];
static struct tlb_entry super_tlb[TLB_SUPERPAGE_ENTRIES];

// Statistics
static struct tlb_stats stats;
static int monitoring_enabled = 0;
static unsigned int timestamp = 0;

// Forward declarations
static unsigned int lookup_tlb(unsigned int proc_id, unsigned int vaddr);
static void insert_regular_tlb(unsigned int proc_id, unsigned int vaddr, unsigned int paddr);
static void insert_super_tlb(unsigned int proc_id, unsigned int vaddr, unsigned int pde);
static int evict_regular_tlb(void);
static int evict_super_tlb(void);
static int is_superpage_mapping(unsigned int proc_id, unsigned int vaddr);

/**
 * Check if a virtual address is mapped by a superpage
 */
static int is_superpage_mapping(unsigned int proc_id, unsigned int vaddr) {
    unsigned int pde = get_pdir_entry_by_va(proc_id, vaddr);
    return (pde & PTE_PS) ? 1 : 0;
}

/**
 * Initialize TLB monitor
 */
void tlb_monitor_init(void) {
    int i;
    
    // Initialize regular TLB
    for (i = 0; i < TLB_ENTRIES; i++) {
        regular_tlb[i].valid = 0;
        regular_tlb[i].last_used = 0;
        regular_tlb[i].is_superpage = 0;
    }
    
    // Initialize superpage TLB
    for (i = 0; i < TLB_SUPERPAGE_ENTRIES; i++) {
        super_tlb[i].valid = 0;
        super_tlb[i].last_used = 0;
        super_tlb[i].is_superpage = 1;
    }
    
    // Reset statistics
    tlb_reset_stats();
    monitoring_enabled = 1;
    
    dprintf("TLB Monitor initialized:\n");
    dprintf("  - Regular TLB: %d entries (4KB pages)\n", TLB_ENTRIES);
    dprintf("  - Superpage TLB: %d entries (4MB pages)\n", TLB_SUPERPAGE_ENTRIES);
}

/**
 * Reset statistics
 */
void tlb_reset_stats(void) {
    stats.hits = 0;
    stats.misses = 0;
    stats.total_accesses = 0;
    stats.superpage_hits = 0;
    stats.regular_hits = 0;
}

/**
 * Look up address in both TLBs
 */
static unsigned int lookup_tlb(unsigned int proc_id, unsigned int vaddr) {
    int i;
    
    // First check superpage TLB (superpages cover large ranges)
    for (i = 0; i < TLB_SUPERPAGE_ENTRIES; i++) {
        if (super_tlb[i].valid && super_tlb[i].proc_id == proc_id) {
            // Check if vaddr falls within this superpage range
            if (vaddr >= super_tlb[i].vaddr_start && 
                vaddr < super_tlb[i].vaddr_start + SUPERPAGE_SIZE) {
                
                // Calculate offset within superpage
                unsigned int offset = vaddr - super_tlb[i].vaddr_start;
                super_tlb[i].last_used = ++timestamp;
                stats.hits++;
                stats.superpage_hits++;
                return super_tlb[i].paddr_start + offset;
            }
        }
    }
    
    // Then check regular TLB
    for (i = 0; i < TLB_ENTRIES; i++) {
        if (regular_tlb[i].valid && regular_tlb[i].proc_id == proc_id) {
            // Regular pages are 4KB aligned
            if (vaddr >= regular_tlb[i].vaddr_start && 
                vaddr < regular_tlb[i].vaddr_start + PAGESIZE) {
                
                unsigned int offset = vaddr - regular_tlb[i].vaddr_start;
                regular_tlb[i].last_used = ++timestamp;
                stats.hits++;
                stats.regular_hits++;
                return regular_tlb[i].paddr_start + offset;
            }
        }
    }
    
    stats.misses++;
    return 0;
}

/**
 * Evict an entry from regular TLB (LRU)
 */
static int evict_regular_tlb(void) {
    int lru_idx = 0;
    unsigned int lru_time = regular_tlb[0].last_used;
    int i;
    
    for (i = 1; i < TLB_ENTRIES; i++) {
        if (regular_tlb[i].last_used < lru_time) {
            lru_time = regular_tlb[i].last_used;
            lru_idx = i;
        }
    }
    
    return lru_idx;
}

/**
 * Evict an entry from superpage TLB (LRU)
 */
static int evict_super_tlb(void) {
    int lru_idx = 0;
    unsigned int lru_time = super_tlb[0].last_used;
    int i;
    
    for (i = 1; i < TLB_SUPERPAGE_ENTRIES; i++) {
        if (super_tlb[i].last_used < lru_time) {
            lru_time = super_tlb[i].last_used;
            lru_idx = i;
        }
    }
    
    return lru_idx;
}

/**
 * Insert into regular TLB
 */
static void insert_regular_tlb(unsigned int proc_id, unsigned int vaddr, unsigned int paddr) {
    int slot = -1;
    int i;
    
    // Look for empty slot
    for (i = 0; i < TLB_ENTRIES; i++) {
        if (!regular_tlb[i].valid) {
            slot = i;
            break;
        }
    }
    
    // If no empty slot, evict one
    if (slot == -1) {
        slot = evict_regular_tlb();
    }
    
    // Insert
    regular_tlb[slot].valid = 1;
    regular_tlb[slot].proc_id = proc_id;
    regular_tlb[slot].vaddr_start = vaddr & ~(PAGESIZE - 1);  // Page align
    regular_tlb[slot].paddr_start = paddr & ~(PAGESIZE - 1);
    regular_tlb[slot].size = PAGESIZE;
    regular_tlb[slot].last_used = ++timestamp;
    regular_tlb[slot].is_superpage = 0;
}

/**
 * Insert into superpage TLB
 */
static void insert_super_tlb(unsigned int proc_id, unsigned int vaddr, unsigned int pde) {
    int slot = -1;
    int i;
    
    // Look for empty slot
    for (i = 0; i < TLB_SUPERPAGE_ENTRIES; i++) {
        if (!super_tlb[i].valid) {
            slot = i;
            break;
        }
    }
    
    // If no empty slot, evict one
    if (slot == -1) {
        slot = evict_super_tlb();
    }
    
    // For superpages, the PDE directly gives the physical address
    unsigned int paddr = pde & 0xFFC00000;  // Mask to get 4MB aligned address
    
    // Insert
    super_tlb[slot].valid = 1;
    super_tlb[slot].proc_id = proc_id;
    super_tlb[slot].vaddr_start = vaddr & 0xFFC00000;  // 4MB align
    super_tlb[slot].paddr_start = paddr;
    super_tlb[slot].size = SUPERPAGE_SIZE;
    super_tlb[slot].last_used = ++timestamp;
    super_tlb[slot].is_superpage = 1;
}

/**
 * Main TLB access function - call this for every memory access
 */
unsigned int tlb_access(unsigned int proc_id, unsigned int vaddr) {
    unsigned int paddr;
    
    if (!monitoring_enabled) {
        // Just do the translation directly
        return get_ptbl_entry_by_va(proc_id, vaddr);
    }
    
    stats.total_accesses++;
    
    // Try TLB lookup first
    paddr = lookup_tlb(proc_id, vaddr);
    
    if (paddr != 0) {
        return paddr;  // TLB hit
    }
    
    // TLB miss - do page table walk
    if (is_superpage_mapping(proc_id, vaddr)) {
        // Superpage mapping
        unsigned int pde = get_pdir_entry_by_va(proc_id, vaddr);
        insert_super_tlb(proc_id, vaddr, pde);
        paddr = (pde & 0xFFC00000) + (vaddr & 0x003FFFFF);  // 4MB offset
    } else {
        // Regular page mapping
        paddr = get_ptbl_entry_by_va(proc_id, vaddr);
        if (paddr & PTE_P) {  // If page is present
            insert_regular_tlb(proc_id, vaddr, paddr);
        }
    }
    
    return paddr;
}

/**
 * Get hit ratio as percentage
 */
unsigned int tlb_get_hit_ratio(void) {
    if (stats.total_accesses == 0) return 0;
    return (stats.hits * 100) / stats.total_accesses;
}

/**
 * Get statistics
 */
struct tlb_stats tlb_get_stats(void) {
    return stats;
}

/**
 * Print detailed statistics - FIXED FORMAT STRINGS
 */
void tlb_print_stats(void) {
    int i;
    int regular_valid = 0, super_valid = 0;
    
    // Count valid entries
    for (i = 0; i < TLB_ENTRIES; i++) {
        if (regular_tlb[i].valid) regular_valid++;
    }
    for (i = 0; i < TLB_SUPERPAGE_ENTRIES; i++) {
        if (super_tlb[i].valid) super_valid++;
    }
    
    dprintf("\n=== TLB Statistics ===\n");
    dprintf("Total accesses: %llu\n", stats.total_accesses);
    
    // Calculate percentages properly as integers
    unsigned int hit_percent = 0;
    unsigned int super_percent = 0;
    
    if (stats.total_accesses > 0) {
        hit_percent = (stats.hits * 100) / stats.total_accesses;
    }
    if (stats.hits > 0) {
        super_percent = (stats.superpage_hits * 100) / stats.hits;
    }
    
    dprintf("Total hits: %llu (%d%%)\n", stats.hits, hit_percent);
    dprintf("  - Regular page hits: %llu\n", stats.regular_hits);
    dprintf("  - Superpage hits: %llu\n", stats.superpage_hits);
    dprintf("Total misses: %llu\n", stats.misses);
    
    dprintf("\nTLB Occupancy:\n");
    dprintf("  - Regular TLB: %d/%d entries\n", regular_valid, TLB_ENTRIES);
    dprintf("  - Super TLB: %d/%d entries\n", super_valid, TLB_SUPERPAGE_ENTRIES);
    
    if (stats.total_accesses > 0) {
        dprintf("\nHit ratio: %d%%\n", hit_percent);
        dprintf("Superpage contribution: %d%% of hits\n", super_percent);
    }
    dprintf("========================\n");
}