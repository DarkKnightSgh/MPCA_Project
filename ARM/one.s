.data
input :.word 00001111
.text
ldr r1,=input
ldr r2,[r1]
mov r3,#0
mov r4,#0
count_ones:
tst r2,#1
addeq r3,r3,#1
lsr r2r2,#1
cmp r2,#0
bne count_ones
count_zeros:
tst r2,#1
addne r4,r4,#1
lsr r2,r2,#1
cmp r2,#0
bne count_zeros
done:
b .