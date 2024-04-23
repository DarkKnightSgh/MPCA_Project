.text
mov r0,#7 ; number of elements
mov r1,#4 ; element to search
ldr r2,=n
loop: ldr r3,[r2],#4
      cmp r3,r1
      moveq r5,r3
      sub r0,r0,#1
      cmp r0,#0
      bne loop
      swi 0x11
.data
n:.word 5, 2, 7, 4, 9, 3, 1