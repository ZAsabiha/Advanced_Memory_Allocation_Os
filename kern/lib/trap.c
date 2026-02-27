#include <lib/string.h>
#include <lib/trap.h>
#include <lib/debug.h>
#include <lib/x86.h>
#include <dev/intr.h>
#include <vmm/MPTIntro/export.h>
#include <vmm/MPTNew/export.h>

extern unsigned int CID;

/**
 * Dumps the trapframe to the console for debugging.
 */
static void trap_dump(tf_t *tf)
{
    if (tf == NULL)
        return;

    uintptr_t base = (uintptr_t) tf;

    KERN_DEBUG("trapframe at %x\n", base);
    KERN_INFO("\t%08x:\tedi:    \t\t%08x\n", &tf->regs.edi, tf->regs.edi);
    KERN_INFO("\t%08x:\tesi:    \t\t%08x\n", &tf->regs.esi, tf->regs.esi);
    KERN_INFO("\t%08x:\tebp:    \t\t%08x\n", &tf->regs.ebp, tf->regs.ebp);
    KERN_INFO("\t%08x:\tesp:    \t\t%08x\n", &tf->regs.oesp, tf->regs.oesp);
    KERN_INFO("\t%08x:\tebx:    \t\t%08x\n", &tf->regs.ebx, tf->regs.ebx);
    KERN_INFO("\t%08x:\tedx:    \t\t%08x\n", &tf->regs.edx, tf->regs.edx);
    KERN_INFO("\t%08x:\tecx:    \t\t%08x\n", &tf->regs.ecx, tf->regs.ecx);
    KERN_INFO("\t%08x:\teax:    \t\t%08x\n", &tf->regs.eax, tf->regs.eax);
    KERN_INFO("\t%08x:\tes:     \t\t%08x\n", &tf->es, tf->es);
    KERN_INFO("\t%08x:\tds:     \t\t%08x\n", &tf->ds, tf->ds);
    KERN_INFO("\t%08x:\ttrapno:\t\t%08x\n", &tf->trapno, tf->trapno);
    KERN_INFO("\t%08x:\terr:    \t\t%08x\n", &tf->err, tf->err);
    KERN_INFO("\t%08x:\teip:    \t\t%08x\n", &tf->eip, tf->eip);
    KERN_INFO("\t%08x:\tcs:     \t\t%08x\n", &tf->cs, tf->cs);
    KERN_INFO("\t%08x:\teflags:\t\t%08x\n", &tf->eflags, tf->eflags);
    KERN_INFO("\t%08x:\tesp:    \t\t%08x\n", &tf->esp, tf->esp);
    KERN_INFO("\t%08x:\tss:     \t\t%08x\n", &tf->ss, tf->ss);
}

/**
 * Page Fault Handler.
 * When a process touches unmapped memory, the hardware triggers this.
 */
void pgflt_handler(tf_t *tf)
{
    unsigned int errno;
    unsigned int fault_va;

    errno = tf->err;
    fault_va = rcr2(); // Get the address that caused the fault

    dprintf("Page fault: VA 0x%08x, errno 0x%08x, process %d, EIP 0x%08x.\n",
            fault_va, errno, CID, tf->eip);

    // 1. Protection Violation (P bit is set)
    // This happens if the page exists but the user doesn't have permissions (e.g. writing to Read-Only)
    if (errno & PFE_PR) {
        KERN_PANIC("Permission denied: va = 0x%08x, errno = 0x%08x (Protection Violation).\n",
                   fault_va, errno);
        return;
    }

    // 2. Superpage Logic (4MB Support)
    // We check if the faulting address falls within our designated superpage range.
    // Standard User Superpage region usually starts at VM_USERLO (0x40000000).
    if (fault_va >= 0x40000000 && fault_va < 0x40400000) {
        dprintf("Handling Superpage Fault at 0x%08x...\n", fault_va);
        
        /* * Note: You will need to implement alloc_superpage in your MPTNew layer.
         * It should use your palloc_superpage() from matop.c and set the 
         * PDE_PS (Page Size) bit in the Page Directory.
         */
        // alloc_superpage(CID, 0x40000000, PTE_W | PTE_U | PTE_P);
        
        // For now, if you haven't written alloc_superpage, fallback to 4KB:
        alloc_page(CID, rounddown(fault_va, PAGESIZE), PTE_W | PTE_U | PTE_P);
    } 
    else {
        // 3. Default 4KB Page Allocation
        // Standard demand paging for everything else.
        alloc_page(CID, rounddown(fault_va, PAGESIZE), PTE_W | PTE_U | PTE_P);
    }
}

void checkpoint()
{
    KERN_INFO("check point reached\n");
}

/**
 * Main trap dispatcher.
 */
void trap(tf_t *tf)
{
    // If it's a Page Fault (Trap 14)
    if (tf->trapno == T_PGFLT) {
        // Switch to Kernel context (PDIR 0) to ensure we can access kernel structures
        set_pdir_base(0); 
        
        pgflt_handler(tf);
        
        // Switch back to the current process's context
        set_pdir_base(CID);
    } 
    else {
        // Handle other traps (Interrupts, Syscalls, etc.)
        KERN_DEBUG("unhandled trap: %d\n", tf->trapno);
        trap_dump(tf);
        KERN_PANIC("Kernel Panic: Unhandled Trap!\n");
    }

    // Return to the user process
    trap_return(tf);
}