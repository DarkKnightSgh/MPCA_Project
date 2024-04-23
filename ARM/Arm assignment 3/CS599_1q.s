.text
	mov r0, #1
	mov r1, #2
	mov r2, #3
	stmfd r13!, {r0, r1, r2}
	bl mul
	ldr r6, =data
	str r7, [r6]
	swi 0x11
	mul:
		ldmfd r13!, {r3, r4, r5}
		stmfd r13!, {r3, r4, lr}
		bl add
		ldmfd r13!, {lr}
		mul r7, r8, r5
		mov pc, lr
	add:
		ldmfd r13!, {r6, r7}
		add r8, r6, r7
		mov pc, lr
.data
data: .word 0