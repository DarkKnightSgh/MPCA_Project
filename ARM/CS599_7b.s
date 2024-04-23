.text
mov r0,#5 ; number of elements
ldr r1,=n
loop:ldr r2,[r1,#4] ; pre addressing
     add r3,r3,r2
     sub r0,r0,#1
     add r1,r1,#4
     cmp r0,#0
     bne loop
     swi 0x11
.data
n:.word 0,2,4,8,16,32