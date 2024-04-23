.text
ldr r0, = arr
mov r1, #10
mov r2, #
mov r3, #5
startLabel:
add r4, r2, r3 ;
mov r7, r4, lsr #1; 
add r8, r0, r7, lsl #2
ldr r5, [r8]
cmp r5, r1
subgt r7, r7, #1
addlt r7, r7, #1
mov r3, r7;
cmp r5, r1
bne startLabel
swi 0x02
swi 0x11

.data
arr: .word 10,20,30,40,50,60