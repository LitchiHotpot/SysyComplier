	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global whileIf
	.type whileIf , %function
whileIf:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L18:
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-4]
	b .L21
.L21:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #100
	movlt r4, #1
	movge r4, #0
	blt .L22
	b .L30
.L22:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #5
	moveq r4, #1
	movne r4, #0
	beq .L31
	b .L40
.L23:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L30:
	b .L23
.L31:
	ldr r4, =25
	str r4, [fp, #-4]
	b .L33
.L32:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #10
	moveq r4, #1
	movne r4, #0
	beq .L41
	b .L50
.L33:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L21
.L40:
	b .L32
.L41:
	ldr r4, =42
	str r4, [fp, #-4]
	b .L43
.L42:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	mul r6, r4, r5
	str r6, [fp, #-4]
	b .L43
.L43:
	b .L33
.L50:
	b .L42
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L69:
	bl whileIf
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #0
	pop {r4, r5, fp, lr}
	bx lr
