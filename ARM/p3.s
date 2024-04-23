.text
ldr r0,=num1
ldr r1,=num2
ldr r5,=num3
ldr r2,[r0]
ldr r3,[r1]
add r4,r2,r3
str r4,[r5]
swi 0x11

.data
num1: .word 12
num2: .word 34
num3: .word 0