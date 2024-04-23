mov r0, #5
mov r1, #1
bl fact
mov r3, r1
swi 0x11
fact: mul r1,r0,r1
      sub r0,r0,#1
      cmp r0,#0
      bne fact
      mov pc,lr