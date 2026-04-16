# -*-Makefile-*-

OBJDIRS += $(KERN_OBJDIR)/vmm/TLBMonitor

KERN_SRCFILES += $(KERN_DIR)/vmm/TLBMonitor/TLBMonitor.c
ifdef TEST
KERN_SRCFILES += $(KERN_DIR)/vmm/TLBMonitor/test.c
endif

$(KERN_OBJDIR)/vmm/TLBMonitor/%.o: $(KERN_DIR)/vmm/TLBMonitor/%.c
	@echo + $(COMP_NAME)[KERN/vmm/TLBMonitor] $<
	@mkdir -p $(@D)
	$(V)$(CCOMP) $(CCOMP_KERN_CFLAGS) -c -o $@ $<