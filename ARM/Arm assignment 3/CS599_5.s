ldr r0,=0xff1
ldr r1,=0x10
loop:
movs r0,r0,lsr #3
addcs r2,r2,#3
addcc r3,r3,#3
sub r1,r1,#3
cmp r1,#2
bne loop
swi 0x11