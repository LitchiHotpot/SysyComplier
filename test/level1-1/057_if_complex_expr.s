	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L39:
	ldr r4, =5
	str r4, [fp, #-20]
	ldr r4, =5
	str r4, [fp, #-16]
	ldr r4, =1
	str r4, [fp, #-12]
	ldr r4, =2
	ldr r5, =0
	sub r6, r5, r4
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	str r6, [fp, #-8]
	ldr r4, =2
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	mul r6, r4, r5
	ldr r4, =2
	sdiv r5, r6, r4
	cmp r5, #0
	movlt r4, #1
	movge r4, #0
	blt .L49
	b .L64
.L49:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	b .L50
.L50:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	ldr r4, =67
	add r5, r6, r4
	cmp r5, #0
	movlt r4, #1
	movge r4, #0
	blt .L100
	b .L115
.L51:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-16]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r4, r5
	cmp r6, #0
	movne r4, #1
	moveq r4, #0
	bne .L65
	b .L79
.L64:
	b .L51
.L65:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r4, r5
	ldr r4, =2
	sdiv r5, r6, r4
	mul r4, r5, r4
	sub r5, r6, r4
	cmp r5, #0
	movne r4, #1
	moveq r4, #0
	bne .L49
	b .L92
.L79:
	b .L50
.L92:
	b .L50
.L100:
	ldr r4, =4
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	b .L101
.L101:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L102:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-16]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r4, r5
	cmp r6, #0
	movne r4, #1
	moveq r4, #0
	bne .L116
	b .L130
.L115:
	b .L102
.L116:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	add r6, r4, r5
	ldr r4, =2
	sdiv r5, r6, r4
	mul r4, r5, r4
	sub r5, r6, r4
	cmp r5, #0
	movne r4, #1
	moveq r4, #0
	bne .L100
	b .L143
.L130:
	b .L101
.L143:
	b .L101
