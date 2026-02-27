#include <lib/x86.h>
#include "import.h"

unsigned int alloc_page (unsigned int proc_index, unsigned int vaddr, unsigned int perm)
{
    unsigned int page_index;
    unsigned int ptbl;
    page_index = container_alloc(proc_index);
    if(page_index == 0) return MagicNumber;
    ptbl = map_page(proc_index, vaddr, page_index, perm);
    return ptbl;
}

// NEW: High-level function to allocate and map a 4MB superpage
unsigned int alloc_superpage (unsigned int proc_index, unsigned int vaddr, unsigned int perm)
{
    unsigned int page_index;
    // Assumes container_alloc_superpage or similar logic is added to MContainer layer
    page_index = container_alloc_superpage(proc_index); 
    
    if(page_index == 0) return MagicNumber;

    unsigned int pde_index = vaddr >> 22;
    // Use the superpage mapping function from MPTIntro
    set_pdir_entry_super(proc_index, pde_index, page_index);
    
    return page_index;
}

unsigned int alloc_mem_quota (unsigned int id, unsigned int quota)
{
    unsigned int child;
    child = container_split (id, quota);
    return child;
}
