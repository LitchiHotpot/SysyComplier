	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global get_one
	.type get_one , %function
get_one:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L31:
	str r0, [fp, #-4]
	mov r0, #1
	add sp, sp, #4
	pop {fp, lr}
	bx lr
	.global deepWhileBr
	.type deepWhileBr , %function
deepWhileBr:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L34:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-16]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	str r6, [fp, #-12]
	b .L51
.L51:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #75
	movlt r4, #1
	movge r4, #0
	blt .L52
	b .L60
.L52:
	ldr r4, =42
	str r4, [fp, #-8]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #100
	movlt r4, #1
	movge r4, #0
	blt .L62
	b .L70
.L53:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L60:
	b .L53
.L62:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	str r6, [fp, #-12]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #99
	movgt r4, #1
	movle r4, #0
	bgt .L82
	b .L90
.L63:
	b .L51
.L70:
	b .L63
.L82:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	mul r6, r4, r5
	str r6, [fp, #-4]
	ldr r0, =0
	bl get_one
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r5, r4
	cmp r5, #1
	moveq r4, #1
	movne r4, #0
	beq .L99
	b .L108
.L83:
	b .L63
.L90:
	b .L83
.L99:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	mul r6, r4, r5
	str r6, [fp, #-12]
	b .L100
.L100:
	b .L83
.L108:
	b .L100
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L120:
	ldr r4, =2
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r0, r4
	mov r1, r5
	bl deepWhileBr
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
