	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #32
.L58:
	ldr r4, =0
	str r4, [fp, #-28]
	ldr r4, =0
	str r4, [fp, #-32]
	b .L62
.L62:
	ldr r4, [fp, #-32]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L63
	b .L71
.L63:
	ldr r4, [fp, #-32]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-24]
	ldr r4, [fp, #-32]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-32]
	b .L62
.L64:
	ldr r4, =10
	str r4, [fp, #-4]
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-20]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	sub r6, r4, r5
	str r6, [fp, #-16]
	ldr r4, =0
	str r4, [fp, #-12]
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	ldr r4, =2
	sdiv r5, r6, r4
	str r5, [fp, #-8]
	b .L116
.L71:
	b .L64
.L116:
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-20]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movne r4, #1
	moveq r4, #0
	bne .L119
	b .L130
.L117:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	ldr r4, =2
	sdiv r5, r6, r4
	str r5, [fp, #-8]
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-24]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L156
	b .L169
.L118:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-24]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L184
	b .L197
.L119:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-16]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L117
	b .L141
.L130:
	b .L118
.L141:
	b .L118
.L156:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	sub r6, r4, r5
	str r6, [fp, #-16]
	b .L158
.L157:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-12]
	b .L158
.L158:
	b .L116
.L169:
	b .L157
.L184:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	b .L186
.L185:
	ldr r4, =0
	str r4, [fp, #-20]
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	b .L186
.L186:
	ldr r4, =10
	str r4, [fp, #-20]
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putch
	mov r4, r0
	mov r0, #0
	add sp, sp, #32
	pop {r4, r5, r6, fp, lr}
	bx lr
.L197:
	b .L185
