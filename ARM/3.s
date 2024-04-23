.text
ldr r0, =number
ldr r0, [r0]
mov r1, #0
mov r2, #0
mov r3, #0
loop:
cmp r0, #0
addeq r2, r2, #1
addgt r2, r2, #1
addlt r1, r1, #1
mov r0, r0, lsl #1 
add r3, r3, #1 
cmp r3, #32
bne loop
swi 0x011
.data
number:.word 0x01010101