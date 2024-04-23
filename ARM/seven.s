.equ a,0x80
.equ b,0x40
.equ c,0x20
.equ p,0x10
.equ e,0x04
.equ f,0x02
.equ g,0x01

seg:.word a|b|c|d|e|g;0
    .word b|c ;1
    .word a|b|f|c|d;3
    .word g|f|b|c;4
    .word a|g|f|c|d ;5
    .word a|g|f|e|d|c;6
    .word a|b|c ;7
    .word a|b|c|d|e|f|g;8
    .word a|b|f|g|c;9
mov r3,#10
ldr r1,=seg
loop:ldr ro,[r1],#4
     subr3,r3,#1
     cmp r3,#0
     bne loop
    beq exit
 exir:swi 0x11       