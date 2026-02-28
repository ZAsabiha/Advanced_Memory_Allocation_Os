#ifndef _KERN_PMM_MATINIT_H_
#define _KERN_PMM_MATINIT_H_

#define HUGE_ORDER 10
#define MAX_ORDER 11

#ifdef _KERN_

void pmem_init(unsigned int mbi_addr);

#endif

#endif