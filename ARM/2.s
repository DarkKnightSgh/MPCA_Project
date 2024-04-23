.text
ldr r0,=arr
ldr r5,=min
ldr r6,=max
ldr r8,[r8]
ldr r9,[r9]
mov r10,#10
ldr r1,[r0],#4
mov r8,r1
loop:
cmp r1,r8
movlt r8,r1 
cmp r1,r9 
movgt r9,r1 
sub r10,r10,#1 
ldr r1,[r0],#4 
cmp r10,#0 
bne loop
str r8,[r5]
str r9,[r6]
swi 0x11
.data
arr:.word 5,8,1,10,14,25,6,3,2,20 
min:.word 0
max:.word 0 