	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L51:
	ldr r4, =0
	str r4, [fp, #-36]
	ldr r4, =0
	str r4, [fp, #-40]
	b .L55
.L55:
	ldr r4, [fp, #-40]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L56
	b .L64
.L56:
	ldr r4, [fp, #-40]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-32]
	ldr r4, [fp, #-40]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-40]
	b .L55
.L57:
	ldr r4, =10
	str r4, [fp, #-12]
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-28]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	sub r6, r4, r5
	str r6, [fp, #-24]
	ldr r4, =0
	str r4, [fp, #-20]
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-20]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	ldr r4, =2
	sdiv r5, r6, r4
	str r5, [fp, #-16]
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-40]
	ldr r4, =0
	str r4, [fp, #-4]
	b .L111
.L64:
	b .L57
.L111:
	ldr r4, [fp, #-40]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L114
	b .L121
.L112:
	ldr r4, [fp, #-32]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-28]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L129
	b .L141
.L113:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #1
	moveq r4, #1
	movne r4, #0
	beq .L153
	b .L162
.L114:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #0
	moveq r4, #1
	movne r4, #0
	beq .L112
	b .L128
.L121:
	b .L113
.L128:
	b .L113
.L129:
	ldr r4, =1
	str r4, [fp, #-8]
	ldr r4, [fp, #-40]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	b .L130
.L130:
	ldr r4, [fp, #-40]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-40]
	b .L111
.L141:
	b .L130
.L153:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	b .L155
.L154:
	ldr r4, =0
	str r4, [fp, #-28]
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	b .L155
.L155:
	ldr r4, =10
	str r4, [fp, #-28]
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putch
	mov r4, r0
	mov r0, #0
	add sp, sp, #40
	pop {r4, r5, r6, fp, lr}
	bx lr
.L162:
	b .L154
