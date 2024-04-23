ldr r2,=a
mov r1,#10
swp r1,r1,[r2]
swi 0x11
.data
a: .word 20