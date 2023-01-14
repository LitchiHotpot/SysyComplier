	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global func1
	.type func1 , %function
func1:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L110:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	str r2, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #0
	moveq r4, #1
	movne r4, #0
	beq .L117
	b .L126
.L117:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mul r6, r4, r5
	mov r0, r6
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L118:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-4]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	sub r7, r5, r6
	mov r0, r4
	mov r1, r7
	ldr r2, =0
	bl func1
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L126:
	b .L118
	.global func2
	.type func2 , %function
func2:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L157:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L162
	b .L167
.L162:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	mov r0, r6
	ldr r1, =0
	bl func2
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L163:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L167:
	b .L163
	.global func3
	.type func3 , %function
func3:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L188:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #0
	moveq r4, #1
	movne r4, #0
	beq .L193
	b .L202
.L193:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	mov r0, r6
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L194:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	mov r0, r6
	ldr r1, =0
	bl func3
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L202:
	b .L194
	.global func4
	.type func4 , %function
func4:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L225:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	str r2, [fp, #-4]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L232
	b .L237
.L232:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #12
	pop {r4, r5, fp, lr}
	bx lr
.L233:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #12
	pop {r4, r5, fp, lr}
	bx lr
.L237:
	b .L233
	.global func5
	.type func5 , %function
func5:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L247:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =0
	sub r6, r5, r4
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	mov r0, r6
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
	.global func6
	.type func6 , %function
func6:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L258:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L266
	b .L269
.L263:
	mov r0, #1
	add sp, sp, #8
	pop {r4, fp, lr}
	bx lr
.L264:
	mov r0, #0
	add sp, sp, #8
	pop {r4, fp, lr}
	bx lr
.L266:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L263
	b .L273
.L269:
	b .L264
.L273:
	b .L264
	.global func7
	.type func7 , %function
func7:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L275:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	ldr r5, =1
	eor r6, r5, r4
	mov r4, r6
	bgt .L278
	b .L289
.L278:
	mov r0, #1
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L279:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L289:
	b .L279
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #28
.L290:
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-28]
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-24]
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-20]
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-16]
	ldr r4, =0
	str r4, [fp, #-8]
	b .L313
.L313:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L314
	b .L322
.L314:
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-12]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L313
.L315:
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl func7
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-24]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r0, r5
	bl func5
	mov r5, r0
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r0, r4
	mov r1, r5
	bl func6
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-20]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r0, r4
	mov r1, r5
	bl func2
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-16]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r0, r4
	mov r1, r5
	bl func3
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl func5
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-12]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	mov r0, r6
	bl func5
	mov r6, r0
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	ldr r7, [fp, #-12]
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-12]
	cmp r8, #0
	movgt r9, #1
	movle r9, #0
	mov r0, r8
	bl func7
	mov r8, r0
	cmp r8, #0
	movgt r9, #1
	movle r9, #0
	mov r0, r7
	mov r1, r8
	bl func6
	mov r7, r0
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-12]
	cmp r8, #0
	movgt r9, #1
	movle r9, #0
	ldr r9, [fp, #-12]
	cmp r9, #0
	movgt r10, #1
	movle r10, #0
	mov r0, r9
	bl func7
	mov r9, r0
	cmp r9, #0
	movgt r10, #1
	movle r10, #0
	mov r0, r8
	mov r1, r9
	bl func2
	mov r8, r0
	cmp r8, #0
	movgt r9, #1
	movle r9, #0
	mov r0, r6
	mov r1, r7
	mov r2, r8
	bl func4
	mov r6, r0
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	ldr r7, [fp, #-12]
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	mov r0, r6
	mov r1, r7
	bl func3
	mov r6, r0
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	ldr r7, [fp, #-12]
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	mov r0, r6
	mov r1, r7
	bl func2
	mov r6, r0
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	ldr r7, [fp, #-12]
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-12]
	cmp r8, #0
	movgt r9, #1
	movle r9, #0
	mov r0, r8
	bl func7
	mov r8, r0
	cmp r8, #0
	movgt r9, #1
	movle r9, #0
	mov r0, r7
	mov r1, r8
	bl func3
	mov r7, r0
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-28]
	cmp r8, #0
	movgt r9, #1
	movle r9, #0
	mov r0, r6
	mov r1, r7
	mov r2, r8
	bl func1
	mov r6, r0
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl func4
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-24]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-20]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	mov r0, r6
	bl func7
	mov r6, r0
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	ldr r7, [fp, #-16]
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	mov r0, r6
	mov r1, r7
	bl func3
	mov r6, r0
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	mov r0, r5
	mov r1, r6
	bl func2
	mov r5, r0
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r0, r4
	mov r1, r5
	bl func3
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-12]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl func1
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r0, r4
	mov r1, r5
	bl func2
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-12]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	ldr r7, [fp, #-12]
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	mov r0, r7
	bl func5
	mov r7, r0
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	mov r0, r6
	mov r1, r7
	bl func3
	mov r6, r0
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	ldr r7, [fp, #-12]
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	mov r0, r7
	bl func5
	mov r7, r0
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	mov r0, r6
	mov r1, r7
	bl func2
	mov r6, r0
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	ldr r7, [fp, #-12]
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-12]
	cmp r8, #0
	movgt r9, #1
	movle r9, #0
	mov r0, r8
	bl func7
	mov r8, r0
	cmp r8, #0
	movgt r9, #1
	movle r9, #0
	mov r0, r6
	mov r1, r7
	mov r2, r8
	bl func1
	mov r6, r0
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	ldr r7, [fp, #-12]
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	mov r0, r7
	bl func5
	mov r7, r0
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	mov r0, r6
	mov r1, r7
	bl func2
	mov r6, r0
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	ldr r7, [fp, #-28]
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	mov r0, r6
	mov r1, r7
	bl func3
	mov r6, r0
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl func1
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
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L322:
	b .L315
