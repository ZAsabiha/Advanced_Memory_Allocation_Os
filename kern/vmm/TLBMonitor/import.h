#ifndef _KERN_VMM_TLBMONITOR_IMPORT_H_
#define _KERN_VMM_TLBMONITOR_IMPORT_H_

#ifdef _KERN_

// Access to page table entries - these need to detect superpages
unsigned int get_ptbl_entry_by_va(unsigned int proc_index, unsigned int vaddr);
unsigned int get_pdir_entry_by_va(unsigned int proc_index, unsigned int vaddr);

// Constants from your memory system
#define PTE_PS 0x80  // Page Size bit for superpages
#define PAGESIZE 4096
#define SUPERPAGE_SIZE (1024 * PAGESIZE)  // 4MB

#endif /* _KERN_ */
#endif /* !_KERN_VMM_TLBMONITOR_IMPORT_H_ */