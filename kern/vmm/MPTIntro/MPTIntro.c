#include <lib/gcc.h>
#include <lib/x86.h>
#include <lib/debug.h>

#include "import.h"

#define PT_PERM_UP 0
#define PT_PERM_PTU (PTE_P | PTE_W | PTE_U)
#define PTE_PS 0x80 // Bit 7: Page Size Extensions for 4MB pages

char * PDirPool[NUM_IDS][1024] gcc_aligned(PAGESIZE);
unsigned int IDPTbl[1024][1024] gcc_aligned(PAGESIZE);

void set_pdir_base(unsigned int index)
{
    set_cr3(PDirPool[index]);
}

unsigned int get_pdir_entry(unsigned int proc_index, unsigned int pde_index)
{
    return (unsigned int)PDirPool[proc_index][pde_index];
}   

void set_pdir_entry(unsigned int proc_index, unsigned int pde_index, unsigned int page_index)
{
    unsigned int value = (page_index << 12) | PT_PERM_PTU; 
    PDirPool[proc_index][pde_index] = (char *)value;
}

// NEW: Maps a 4MB physical frame directly into the Page Directory
void set_pdir_entry_super(unsigned int proc_index, unsigned int pde_index, unsigned int page_index)
{
    // Sets Bit 7 (PTE_PS) to indicate this PDE points to a 4MB page
    unsigned int value = (page_index << 12) | PT_PERM_PTU | PTE_PS; 
    PDirPool[proc_index][pde_index] = (char *)value;
}

void set_pdir_entry_identity(unsigned int proc_index, unsigned int pde_index)
{   
    unsigned int value = (unsigned int)IDPTbl[pde_index];
    value |= PT_PERM_PTU;
    PDirPool[proc_index][pde_index] = (char *)value;
}   

void rmv_pdir_entry(unsigned int proc_index, unsigned int pde_index)
{
    PDirPool[proc_index][pde_index] = (char *)0x00000000;
}   

unsigned int get_ptbl_entry(unsigned int proc_index, unsigned int pde_index, unsigned int pte_index)
{   
    unsigned int pte_addr = (unsigned int )PDirPool[proc_index][pde_index];
    pte_addr &= 0xfffff000;
    pte_addr += pte_index << 2;
    return *(unsigned int *)pte_addr;
}

void set_ptbl_entry(unsigned int proc_index, unsigned int pde_index, unsigned int pte_index, unsigned int page_index, unsigned int perm)
{   
    unsigned int* pte;
    unsigned int pte_addr =  (unsigned int )PDirPool[proc_index][pde_index];
    pte_addr &= 0xfffff000;
    pte_addr += pte_index << 2;

    pte = (unsigned int *)pte_addr;
    *pte = (page_index << 12) | (perm & 0x00000fff);
}   

void set_ptbl_entry_identity(unsigned int pde_index, unsigned int pte_index, unsigned int perm)
{
    IDPTbl[pde_index][pte_index] = ((pde_index << 10) + pte_index) << 12;
    IDPTbl[pde_index][pte_index] |= perm;
}

void rmv_ptbl_entry(unsigned int proc_index, unsigned int pde_index, unsigned int pte_index)
{
    unsigned int * pte;
    unsigned int pte_addr = (unsigned int)PDirPool[proc_index][pde_index];
    pte_addr &= 0xfffff000;
    pte_addr += pte_index << 2;
    pte = (unsigned int *)pte_addr;
    *pte = 0;
}