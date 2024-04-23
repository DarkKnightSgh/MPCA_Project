.text
mov r0,#6 ; number of elements
ldr r1,=n
loop: ldr r2,[r1],#4
      add r3,r3,r2
      sub r0,r0,#1
      cmp r0,#0
      bne loop
swi 0x11
.data
n:.word 1, 3, 5, 7, 9, 11