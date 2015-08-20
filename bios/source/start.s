    .include "regdef.h"
    .set		noreorder
    .section .text.boot
    .global _start
_start:
    nop
    mtc0 zero, sr
    nop
    lui sp, 0x801F
    ori sp, sp, 0xFF00
    nop
    j kmain
    nop

    .section .rodata.rom_header
    .int KERNEL_BUILD_DATE
    .int 0x43545258
    .asciz "CTRX BIOS"
