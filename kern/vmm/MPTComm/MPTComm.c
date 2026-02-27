#include <lib/x86.h>
#include <lib/debug.h>

#include "import.h"

#define VM_USERLO 0X40000000
#define VM_USERHI 0xF0000000
#define VM_USERLO_PI (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI (VM_USERHI / PAGESIZE)
#define PTE_PS 0x80 

void pdir_init(unsigned int mbi_adr)
{
    int i, j;
    idptbl_init(mbi_adr);

    for(i = 0; i < NUM_IDS; i++){
      for(j = 0; j < (VM_USERLO_PI >> 10); j++){
        set_pdir_entry_identity(i, j);
      }
      for(j = VM_USERLO_PI >> 10; j < VM_USERHI_PI >> 10; j++){
        rmv_pdir_entry(i, j);
      }
      for(j = VM_USERHI_PI >> 10; j < 1024; j++){
        set_pdir_entry_identity(i, j);
      }
    }
}

unsigned int alloc_ptbl(unsigned int proc_index, unsigned int vadr)
{
  unsigned int addr;
  unsigned int page_index;
  page_index = container_alloc(proc_index);
  if(page_index == 0) return 0;
  
  set_pdir_entry_by_va(proc_index, vadr, page_index);
  
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
    *(unsigned int *)addr = 0;
  }
  return page_index;
}

/**
 * Updated free_ptbl: Now handles Superpage freeing correctly.
 */
void free_ptbl(unsigned int proc_index, unsigned int vadr)
{
  unsigned int pdir_entry = get_pdir_entry_by_va(proc_index, vadr);
  
  // If the entry is not present, there's nothing to do
  if (!(pdir_entry & PTE_P)) {
      return;
  }

  // CASE 1: Superpage (4MB)
  if (pdir_entry & PTE_PS) {
      unsigned int page_index = pdir_entry >> 12;
      
      // 1. Clear the mapping from the Page Directory
      rmv_pdir_entry_by_va(proc_index, vadr);
      
      // 2. Free the 4MB block via the container system
      // Your MContainer layer must support freeing high-order blocks
      container_free(proc_index, page_index);
      
      dprintf("VMM: Superpage at VA 0x%08x (PI %u) freed.\n", vadr, page_index);
      return;
  }

  // CASE 2: Standard Page Table (4KB)
  unsigned int page_index = pdir_entry >> 12;
  rmv_pdir_entry_by_va(proc_index, vadr);
  container_free(proc_index, page_index);
}