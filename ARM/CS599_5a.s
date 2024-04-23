mov r0,#10
mov r1,#25
loop: cmp r0,r1
      subgt r0,r0,r1
      sublt r1,r1,r0
      swieq 0x11
      b loop