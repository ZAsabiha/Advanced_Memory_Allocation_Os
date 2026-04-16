#ifndef _KERN_VMM_TLBMONITOR_H_
#define _KERN_VMM_TLBMONITOR_H_

#ifdef _KERN_

// TLB statistics structure
struct tlb_stats {
    unsigned long long hits;
    unsigned long long misses;
    unsigned long long total_accesses;
    unsigned long long superpage_hits;     // Hits from superpages
    unsigned long long regular_hits;        // Hits from regular 4KB pages
};

// Initialize TLB monitoring
void tlb_monitor_init(void);

// Simulate TLB access for a virtual address
unsigned int tlb_access(unsigned int proc_id, unsigned int vaddr);

// Get current TLB statistics
struct tlb_stats tlb_get_stats(void);

// Reset TLB statistics
void tlb_reset_stats(void);

// Print TLB statistics with superpage analysis
void tlb_print_stats(void);

// Calculate hit ratio (returns percentage)
unsigned int tlb_get_hit_ratio(void);

// Run simple test scenarios
int tlb_run_simple_test(void);
int tlb_run_scenario_test(void);

#endif /* _KERN_ */
#endif /* !_KERN_VMM_TLBMONITOR_H_ */