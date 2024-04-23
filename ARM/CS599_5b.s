mov r2,#10
mov r3,#25
while: cmp r2,r3
       bgt l1
       blt l2
       swi 0x11
l1: sub r2,r2,r3
    b while
l2: sub r3,r3,r2
    b while