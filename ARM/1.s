.data
A: .word 0,0,0,0,0,0,0,0,0,0,0,0,0
.text
ldr r0,=A
mov r1,#0
mov r2,#1
mov r3,#0
mov r4,#0
loop:
STR r1,[r0],#4
mov r3,r1
mov r1,r2
add r2,r2,r3
add r4,r4,#1
cmp r4,#10
bne loop