	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global n
.size n, 4
n:
	.word 0
	.comm array, 440, 4
	.text
	.global init
	.type init , %function
init:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L160:
	str r0, [fp, #-8]
	ldr r4, =1
	str r4, [fp, #-4]
	b .L164
.L164:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-8]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	mul r7, r5, r6
	ldr r5, =1
	add r6, r7, r5
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L165
	b .L187
.L165:
	ldr r4, =1
	ldr r5, =0
	sub r6, r5, r4
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, addr_array
	str r6, [r4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L164
.L166:
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L187:
	b .L166
	.global findfa
	.type findfa , %function
findfa:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L199:
	str r0, [fp, #-4]
	ldr r4, addr_array
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	cmp r5, r4
	moveq r4, #1
	movne r4, #0
	beq .L202
	b .L215
.L202:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L203:
	ldr r4, addr_array
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	mov r0, r5
	bl findfa
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_array
	str r4, [r5]
	ldr r4, addr_array
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	mov r0, r5
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L215:
	b .L203
	.global mmerge
	.type mmerge , %function
mmerge:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L232:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl findfa
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl findfa
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movne r4, #1
	moveq r4, #0
	bne .L255
	b .L267
.L255:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_array
	str r4, [r5]
	b .L256
.L256:
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L267:
	b .L256
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #36
.L272:
	ldr r4, =1
	str r4, [fp, #-36]
	b .L277
.L277:
	ldr r4, [fp, #-36]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L278
	b .L282
.L278:
	ldr r4, [fp, #-36]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	sub r6, r4, r5
	str r6, [fp, #-36]
	ldr r4, =4
	str r4, [fp, #-8]
	ldr r4, =10
	str r4, [fp, #-32]
	ldr r4, =0
	str r4, [fp, #-20]
	ldr r4, =0
	str r4, [fp, #-16]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl init
	mov r4, r0
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mul r6, r4, r5
	ldr r4, =1
	add r5, r6, r4
	str r5, [fp, #-12]
	b .L315
.L279:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L282:
	b .L279
.L315:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-32]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L316
	b .L328
.L316:
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
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	ldr r5, =1
	eor r6, r5, r4
	mov r4, r6
	bgt .L337
	b .L347
.L317:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	ldr r5, =1
	eor r6, r5, r4
	mov r4, r6
	bgt .L642
	b .L652
.L328:
	b .L317
.L337:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-28]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, =1
	sub r7, r5, r6
	mul r5, r4, r7
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	str r6, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_array
	str r4, [r5]
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #1
	moveq r4, #1
	movne r4, #0
	beq .L374
	b .L382
.L338:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-20]
	b .L315
.L347:
	b .L338
.L374:
	ldr r4, =0
	ldr r5, addr_array
	str r4, [r5]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	ldr r1, =0
	bl mmerge
	mov r4, r0
	b .L375
.L375:
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L390
	b .L402
.L382:
	b .L375
.L390:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_array
	str r4, [r5]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r0, r4
	mov r1, r5
	bl mmerge
	mov r4, r0
	b .L391
.L391:
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L420
	b .L431
.L402:
	b .L391
.L418:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, =1
	add r7, r5, r6
	mov r0, r4
	mov r1, r7
	bl mmerge
	mov r4, r0
	b .L419
.L419:
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #1
	movgt r4, #1
	movle r4, #0
	bgt .L459
	b .L466
.L420:
	ldr r4, addr_array
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =1
	ldr r6, =0
	sub r7, r6, r4
	cmp r7, #0
	movgt r4, #1
	movle r4, #0
	cmp r5, r7
	movne r4, #1
	moveq r4, #0
	bne .L418
	b .L442
.L431:
	b .L419
.L442:
	b .L419
.L457:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, =1
	sub r7, r5, r6
	mov r0, r4
	mov r1, r7
	bl mmerge
	mov r4, r0
	b .L458
.L458:
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L494
	b .L505
.L459:
	ldr r4, addr_array
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =1
	ldr r6, =0
	sub r7, r6, r4
	cmp r7, #0
	movgt r4, #1
	movle r4, #0
	cmp r5, r7
	movne r4, #1
	moveq r4, #0
	bne .L457
	b .L477
.L466:
	b .L458
.L477:
	b .L458
.L492:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-8]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	add r7, r5, r6
	mov r0, r4
	mov r1, r7
	bl mmerge
	mov r4, r0
	b .L493
.L493:
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #1
	movgt r4, #1
	movle r4, #0
	bgt .L537
	b .L544
.L494:
	ldr r4, addr_array
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =1
	ldr r6, =0
	sub r7, r6, r4
	cmp r7, #0
	movgt r4, #1
	movle r4, #0
	cmp r5, r7
	movne r4, #1
	moveq r4, #0
	bne .L492
	b .L516
.L505:
	b .L493
.L516:
	b .L493
.L535:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-8]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	sub r7, r5, r6
	mov r0, r4
	mov r1, r7
	bl mmerge
	mov r4, r0
	b .L536
.L536:
	ldr r4, addr_array
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =1
	ldr r6, =0
	sub r7, r6, r4
	cmp r7, #0
	movgt r4, #1
	movle r4, #0
	cmp r5, r7
	movne r4, #1
	moveq r4, #0
	bne .L577
	b .L588
.L537:
	ldr r4, addr_array
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =1
	ldr r6, =0
	sub r7, r6, r4
	cmp r7, #0
	movgt r4, #1
	movle r4, #0
	cmp r5, r7
	movne r4, #1
	moveq r4, #0
	bne .L535
	b .L555
.L544:
	b .L536
.L555:
	b .L536
.L574:
	ldr r4, =1
	str r4, [fp, #-16]
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	ldr r0, =10
	bl putch
	mov r4, r0
	b .L575
.L575:
	b .L338
.L576:
	ldr r0, =0
	bl findfa
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r0, r5
	bl findfa
	mov r5, r0
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r6, r4
	mov r4, r5
	cmp r6, r4
	moveq r4, #1
	movne r4, #0
	beq .L574
	b .L616
.L577:
	ldr r4, addr_array
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =1
	ldr r6, =0
	sub r7, r6, r4
	cmp r7, #0
	movgt r4, #1
	movle r4, #0
	cmp r5, r7
	movne r4, #1
	moveq r4, #0
	bne .L576
	b .L599
.L588:
	b .L575
.L599:
	b .L575
.L616:
	b .L575
.L642:
	ldr r4, =1
	ldr r5, =0
	sub r6, r5, r4
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	mov r0, r6
	bl putint
	mov r4, r0
	ldr r0, =10
	bl putch
	mov r4, r0
	b .L643
.L643:
	b .L277
.L652:
	b .L643
addr_array:
	.word array
addr_n:
	.word n
