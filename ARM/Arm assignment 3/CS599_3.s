.text
mov r0,#0
cmp r0,#0
beq zero
bgt great
blt less
zero:
LDR r0,=ZEROMSG
swi 0x02
swi 0x11
great:
LDR r0,=POSMSG
swi 0x02
swi 0x11
less:
ldr r0,=NEGMSG
SWI 0X02
swi 0x011
.data
ZEROMSG: .ASCIZ "GIVEN NUMBER IS ZERO AND POSITIVE"
POSMSG: .ASCIZ " GIVEN NUMBER IS POSITIVE"
NEGMSG: .ASCIZ " GIVEN NUMBER IS NEGATIVE"