	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global ifWhile
	.type ifWhile , %function
ifWhile:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L22:
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r4, =3
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #5
	moveq r4, #1
	movne r4, #0
	beq .L25
	b .L34
.L25:
	b .L35
.L26:
	b .L59
.L27:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L34:
	b .L26
.L35:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #2
	moveq r4, #1
	movne r4, #0
	beq .L36
	b .L44
.L36:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L35
.L37:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =25
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L27
.L44:
	b .L37
.L59:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #5
	movlt r4, #1
	movge r4, #0
	blt .L60
	b .L68
.L60:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	mul r6, r4, r5
	str r6, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L59
.L61:
	b .L27
.L68:
	b .L61
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L87:
	bl ifWhile
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #0
	pop {r4, r5, fp, lr}
	bx lr
