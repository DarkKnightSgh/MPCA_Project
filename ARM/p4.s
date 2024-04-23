.text
ldr r0,=array
mov r1,#6
label:
ldr r2,[r0]
add r0,r0,#4
add r3,r3,r2
sub r1,r1,#1
cmp r1,#0
bne label
swi 0x11

.data
array: .word 2,4,2,6,56,8