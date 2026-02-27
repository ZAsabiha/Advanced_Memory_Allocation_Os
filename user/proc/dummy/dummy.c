#include <stdio.h>
#include <types.h>

#define VM_TOP      0xffffffff
#define VM_USERHI   0xf0000000
#define VM_DYNLINK  0xe0000000
#define VM_STACKHI  0xd0000000
#define VM_USERLO   0x40000000
#define VM_BOTTOM   0x00000000

// Define the Superpage size for user feedback
#define SUPERPAGE_SIZE 0x400000 // 4MB

int main(int argc, char **argv)
{
    printf("Welcome to the Superpage-Aware User Process! (Ctrl - Z to exit)\n\n");

    unsigned int i;
    unsigned int addr = 0;
    unsigned int val;
    char c;

    printf("Enter a virtual address (Decimal). \n");
    printf("Tip: Try 1073741824 for 0x40000000 (Superpage Start).\n");
    printf("Enter the address: ");

    while (1) {
        i = getc();

        if (i == 0)
            continue;
        else if (i == 0x1a) {  // exit when Ctrl-Z is entered
            printf("\nExiting from the user process.\n");
            break;
        } else if (i == 0x0a || i == 0x0d) {  // output new line
            printf("\n");
            
            // SUPERPAGE CHECK: Inform the user if they are hitting the superpage region
            if (addr >= VM_USERLO && addr < (VM_USERLO + SUPERPAGE_SIZE)) {
                printf("[DEBUG] Address %u is inside the 4MB Superpage region.\n", addr);
            }

            printf("Address entered: %u\n", addr);
            printf("Specify the action: r for read, w for write.\n");

            while (1) {
                c = getc();
                if (c == 0)
                    continue;
                
                printf("%c\n", c);
                if (c == 'r') {
                    // This will trigger the pgflt_handler in trap.c
                    val = *((unsigned int *) addr);
                    printf("The value at virtual address %u is %d.\n", addr, val);
                    break;
                } else if (c == 'w') {
                    printf("Enter the value you want to write (0 to 9): ");
                    while (1) {
                        val = getc();
                        if (val == 0 || val < '0' || val > '9')
                            continue;
                        
                        printf("%c\n", val);
                        // This write triggers the page fault and allocation
                        *((unsigned int *) addr) = val - '0';
                        printf("Successfully wrote to the superpage!\n");
                        break;
                    }
                    break;
                } else {
                    printf("\nInvalid action. Use 'r' or 'w': ");
                }
            }
            addr = 0;
            printf("\nEnter a new address: ");
            continue;
        } else if (i < '0' || i > '9') {
            continue;
        } else if (addr >= 0xffffffff / 10) {
            printf("\nAddress out of range.\n");
            addr = 0;
            printf("Enter the address: ");
            continue;
        }

        addr = addr * 10 + i - '0';
        printf("%c", i);
    }

    return 0;
}