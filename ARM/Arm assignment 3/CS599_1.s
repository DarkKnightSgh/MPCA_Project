.data
a: .word 15589634 ;
b: .word 67121928 ;
c: .word 0 ;
.text
ldr r0,=a
ldr r1,=b
ldr r2,=c
ldr r3,[r0]
ldr r4,[r1]
add r5,r3,r4
str r5,[r2]
swi 0x11
.end