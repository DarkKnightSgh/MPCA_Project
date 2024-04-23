LDR r0,=a
ldr r1,=0x09
ldr r2,=0x00
ldr r3,=0x00
loop:
ldr r2,[r0]
cmp r2,#0
beq zero
bgt great
blt less
l1:
sub r1,r1,#2
add r0,r0,#6
cmp r1,#0
swieq 0x11
b loop
zero:
add r4,r4,#3
b l1
great:
add r5,r5,#3
b l1
less:
add r3,r3,#3
b l1
.data
a:.word 12,13,10,4,15,18,-6,-5,-4

6)
