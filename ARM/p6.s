.text
ldr r0,=array
mov r1,#6
label:
ldr r2,[r0],#4
and r4,r2,#1
cmp r4,#0
beq even
bne odd
even:
add r3,r3,r2
sub r1,r1,#1
cmp r1,#0
bne label
beq halt
odd:

sub r1,r1,#1
cmp r1,#0
bne label
beq halt
halt:
swi 0x11
.data
array:.word 2,4,2,6,5,8