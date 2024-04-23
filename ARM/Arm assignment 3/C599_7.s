.data
a:.word 0,-3,2,5,-9

.text
ldr r0,= a
mov r1, #0
mov r2, #0
mov r5, #0
add r3, r0, #20
looper:
ldr r4, [r0]
cmp r4, #0
addeq r2, r2, #1
addmi r5, r5, #1
cmp r4, #1
addeq r1, r1, #1
add r0, r0, #4
cmp r0, r3
bne looper
swi 0x11