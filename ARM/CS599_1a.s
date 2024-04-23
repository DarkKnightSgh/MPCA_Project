.text
ldr r0,=a
ldr r1,=b
ldmia r0!,{r2-r6}
stmdb r1!,{r2-r6}
swi 0x11
.data
a:.word 5,10,15,20
b:.word 0
