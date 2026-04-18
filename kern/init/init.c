// kern/init/init.c
#include <lib/debug.h>
#include <lib/types.h>
#include <lib/monitor.h>
#include <lib/trap.h>
#include <lib/x86.h>
/* VMM Layer Exports */
#include <vmm/MPTInit/export.h>
#include <vmm/MPTNew/export.h>
#include <vmm/TLBMonitor/export.h>
#ifdef TEST
extern int  test_MATIntro(void);
extern int  test_MATInit(void);
extern int  test_MATOp(void);
extern int  MATOp_test_superpage_advanced(void); 
extern bool test_MContainer(void);
extern int  test_MPTOp(void);
extern int  test_MPTComm(void); 
extern int  test_MPTNew(void);
extern int  test_heap(void);
extern int  test_TLBMonitor(void);
#endif
extern void pmem_init(unsigned int mbi_addr);
extern void container_init(unsigned int mbi_addr);
extern void heap_init(void);
static void kern_main(uintptr_t mbi_addr)
{
KERN_DEBUG("In kernel main.\n\n");
#ifdef TEST
    /* 1. Physical Memory Tests */
pmem_init((unsigned int)mbi_addr);
test_MATInit();
test_MATOp();
    /* 2. Container Tests */
container_init((unsigned int)mbi_addr);
test_MContainer();
    /* 3. Run MPTOp BEFORE paging_init */
dprintf("\nTesting MPTOp layer...\n");
if (test_MPTOp() == 0) {
dprintf("MPTOp tests passed!\n");
    }
    /* 4. TLB Performance Tests */
dprintf("\n=== Starting TLB Performance Tests ===\n");
tlb_monitor_init();
if (test_TLBMonitor() == 0) {
dprintf("TLB tests passed!\n");
    } else {
dprintf("TLB tests failed!\n");
    }
    /* 5. Virtual Memory & Superpage Tests */
paging_init(mbi_addr); 
heap_init();
    /* 6. Heap Growth & Shrink Tests */
dprintf("\nStarting Heap Growth & Shrink Tests...\n");
if (test_heap() == 0) {
dprintf("Heap tests passed!\n");
    }
dprintf("Testing the MPTComm layer (Superpage & Heap foundation)...\n");
if (test_MPTComm() == 0) {
dprintf("MPTComm tests passed!\n");
    }
dprintf("\nTesting MPTNew layer...\n");
if (test_MPTNew() == 0) {
dprintf("MPTNew tests passed!\n");
    }
dprintf("\nAll tests complete. Please Use Ctrl-a x to exit qemu.\n");
#else
paging_init(mbi_addr);
heap_init();
tlb_monitor_init();
monitor(NULL);
#endif
monitor(NULL);
}
void kern_init(uintptr_t mbi_addr)
{
pmem_init((unsigned int)mbi_addr);
KERN_DEBUG("Kernel initialized.\n");
kern_main(mbi_addr);
}
