	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global deepWhileBr
	.type deepWhileBr , %function
deepWhileBr:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L27:
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
	b .L44
.L44:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #75
	movlt r4, #1
	movge r4, #0
	blt .L45
	b .L53
.L45:
	ldr r4, =42
	str r4, [fp, #-8]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #100
	movlt r4, #1
	movge r4, #0
	blt .L55
	b .L63
.L46:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L53:
	b .L46
.L55:
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
	bgt .L75
	b .L83
.L56:
	b .L44
.L63:
	b .L56
.L75:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	mul r6, r4, r5
	str r6, [fp, #-4]
	ldr r4, =1
	cmp r4, #1
	moveq r4, #1
	movne r4, #0
	beq .L92
	b .L96
.L76:
	b .L56
.L83:
	b .L76
.L92:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	mul r6, r4, r5
	str r6, [fp, #-12]
	b .L93
.L93:
	b .L76
.L96:
	b .L93
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L108:
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
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
