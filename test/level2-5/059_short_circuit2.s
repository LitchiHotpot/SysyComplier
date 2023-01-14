	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global func
	.type func , %function
func:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L26:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #50
	movle r4, #1
	movgt r4, #0
	ble .L29
	b .L38
.L29:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	mov r0, #1
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr
.L30:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr
.L38:
	b .L30
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L53:
	ldr r0, =0
	bl func
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r5, r4
	cmp r5, #1
	moveq r4, #1
	movne r4, #0
	beq .L55
	b .L66
.L55:
	ldr r4, =0
	str r4, [fp, #-4]
	b .L57
.L56:
	ldr r4, =1
	str r4, [fp, #-4]
	b .L57
.L57:
	ldr r0, =50
	bl func
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r5, r4
	cmp r5, #1
	moveq r4, #1
	movne r4, #0
	beq .L88
	b .L96
.L58:
	ldr r0, =50
	bl func
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r5, r4
	cmp r5, #1
	moveq r4, #1
	movne r4, #0
	beq .L67
	b .L75
.L66:
	b .L58
.L67:
	ldr r0, =100
	bl func
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r5, r4
	cmp r5, #0
	moveq r4, #1
	movne r4, #0
	beq .L55
	b .L83
.L75:
	b .L56
.L83:
	b .L56
.L84:
	ldr r4, =0
	str r4, [fp, #-4]
	b .L86
.L85:
	ldr r4, =1
	str r4, [fp, #-4]
	b .L86
.L86:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr
.L87:
	ldr r0, =1
	bl func
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r5, r4
	cmp r5, #1
	moveq r4, #1
	movne r4, #0
	beq .L84
	b .L112
.L88:
	ldr r0, =40
	bl func
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r5, r4
	cmp r5, #1
	moveq r4, #1
	movne r4, #0
	beq .L84
	b .L104
.L96:
	b .L87
.L104:
	b .L87
.L112:
	b .L85
