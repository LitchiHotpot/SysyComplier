	.arch armv8-a
	.arch_extension crc
	.arm
.data

.section .rodata

.global N
.size N, 4
N:
	.word 10000
	.text
	.global long_array
	.type long_array , %function
long_array:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #32
.L129:
	str r0, [fp, #-32]
	ldr r4, =0
	str r4, [fp, #-16]
	b .L136
.L136:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_N
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L137
	b .L148
.L137:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-16]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mul r6, r4, r5
	ldr r4, =10
	sdiv r5, r6, r4
	mul r4, r5, r4
	sub r5, r6, r4
	str r5, [fp, #-28]
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-16]
	b .L136
.L138:
	ldr r4, =0
	str r4, [fp, #-16]
	b .L170
.L148:
	b .L138
.L170:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_N
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L171
	b .L182
.L171:
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-28]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mul r6, r4, r5
	ldr r4, =10
	sdiv r5, r6, r4
	mul r4, r5, r4
	sub r5, r6, r4
	str r5, [fp, #-24]
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-16]
	b .L170
.L172:
	ldr r4, =0
	str r4, [fp, #-16]
	b .L204
.L182:
	b .L172
.L204:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_N
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L205
	b .L216
.L205:
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-24]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mul r6, r4, r5
	ldr r4, =100
	sdiv r5, r6, r4
	mul r4, r5, r4
	sub r5, r6, r4
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	str r6, [fp, #-20]
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-16]
	b .L204
.L206:
	ldr r4, =0
	str r4, [fp, #-12]
	ldr r4, =0
	str r4, [fp, #-16]
	b .L246
.L216:
	b .L206
.L246:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_N
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L247
	b .L258
.L247:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L259
	b .L268
.L248:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #32
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L258:
	b .L248
.L259:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-20]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	ldr r4, =1333
	sdiv r5, r6, r4
	mul r4, r5, r4
	sub r5, r6, r4
	str r5, [fp, #-12]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	b .L261
.L260:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #20
	movlt r4, #1
	movge r4, #0
	blt .L290
	b .L299
.L261:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-16]
	b .L246
.L268:
	b .L260
.L290:
	ldr r4, addr_N
	ldr r5, [r4]
	ldr r4, =2
	sdiv r6, r5, r4
	str r6, [fp, #-8]
	b .L307
.L291:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #30
	movlt r4, #1
	movge r4, #0
	blt .L352
	b .L361
.L292:
	b .L261
.L299:
	b .L291
.L307:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_N
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L308
	b .L319
.L308:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-20]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r6, r4
	str r5, [fp, #-12]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L307
.L309:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	b .L292
.L319:
	b .L309
.L352:
	ldr r4, addr_N
	ldr r5, [r4]
	ldr r4, =2
	sdiv r6, r5, r4
	str r6, [fp, #-4]
	b .L369
.L353:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-20]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-32]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =99988
	sdiv r6, r5, r4
	mul r4, r6, r4
	sub r6, r5, r4
	str r6, [fp, #-12]
	b .L354
.L354:
	b .L292
.L361:
	b .L353
.L369:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_N
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L370
	b .L381
.L370:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2233
	cmp r4, r5
	movgt r4, #1
	movle r4, #0
	bgt .L382
	b .L391
.L371:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	b .L354
.L381:
	b .L371
.L382:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-24]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r6, r4
	str r5, [fp, #-12]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L384
.L383:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-28]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, =13333
	sdiv r6, r5, r4
	mul r4, r6, r4
	sub r6, r5, r4
	str r6, [fp, #-12]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L384
.L384:
	b .L369
.L391:
	b .L383
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L484:
	ldr r0, =9
	bl long_array
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #0
	pop {r4, r5, fp, lr}
	bx lr
addr_N:
	.word N
