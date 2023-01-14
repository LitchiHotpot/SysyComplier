	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global a
.size a, 4
a:
	.word 0
.global b
.size b, 4
b:
	.word 0
.global d
.size d, 4
d:
	.word 0
	.text
	.global set_a
	.type set_a , %function
set_a:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L122:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_a
	str r4, [r5]
	ldr r4, addr_a
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	mov r0, r5
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr
	.global set_b
	.type set_b , %function
set_b:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L133:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_b
	str r4, [r5]
	ldr r4, addr_b
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	mov r0, r5
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr
	.global set_d
	.type set_d , %function
set_d:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L144:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_d
	str r4, [r5]
	ldr r4, addr_d
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	mov r0, r5
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L155:
	ldr r4, =2
	ldr r5, addr_a
	str r4, [r5]
	ldr r4, =3
	ldr r5, addr_b
	str r4, [r5]
	ldr r0, =0
	bl set_a
	mov r4, r0
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L158
	b .L161
.L156:
	b .L157
.L157:
	ldr r4, addr_a
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	mov r0, r5
	bl putint
	mov r4, r0
	ldr r0, =32
	bl putch
	mov r4, r0
	ldr r4, addr_b
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	mov r0, r5
	bl putint
	mov r4, r0
	ldr r0, =32
	bl putch
	mov r4, r0
	ldr r4, =2
	ldr r5, addr_a
	str r4, [r5]
	ldr r4, =3
	ldr r5, addr_b
	str r4, [r5]
	ldr r0, =0
	bl set_a
	mov r4, r0
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L189
	b .L192
.L158:
	ldr r0, =1
	bl set_b
	mov r4, r0
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L156
	b .L165
.L161:
	b .L157
.L165:
	b .L157
.L187:
	b .L188
.L188:
	ldr r4, addr_a
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	mov r0, r5
	bl putint
	mov r4, r0
	ldr r0, =32
	bl putch
	mov r4, r0
	ldr r4, addr_b
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	mov r0, r5
	bl putint
	mov r4, r0
	ldr r0, =10
	bl putch
	mov r4, r0
	ldr r4, =1
	str r4, [fp, #-24]
	ldr r4, =2
	ldr r5, addr_d
	str r4, [r5]
	ldr r4, [fp, #-24]
	cmp r4, #1
	movge r4, #1
	movlt r4, #0
	bge .L221
	b .L227
.L189:
	ldr r0, =1
	bl set_b
	mov r4, r0
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L187
	b .L196
.L192:
	b .L188
.L196:
	b .L188
.L219:
	b .L220
.L220:
	ldr r4, addr_d
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	mov r0, r5
	bl putint
	mov r4, r0
	ldr r0, =32
	bl putch
	mov r4, r0
	ldr r4, [fp, #-24]
	cmp r4, #1
	movle r4, #1
	movgt r4, #0
	ble .L242
	b .L250
.L221:
	ldr r0, =3
	bl set_d
	mov r4, r0
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L219
	b .L230
.L227:
	b .L220
.L230:
	b .L220
.L242:
	b .L243
.L243:
	ldr r4, addr_d
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	mov r0, r5
	bl putint
	mov r4, r0
	ldr r0, =10
	bl putch
	mov r4, r0
	mov r4, #3
	ldr r5, =3
	sub r6, r5, r4
	ldr r4, =16
	cmp r4, r6
	movge r4, #1
	movlt r4, #0
	bge .L265
	b .L275
.L244:
	ldr r0, =4
	bl set_d
	mov r4, r0
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L242
	b .L253
.L250:
	b .L244
.L253:
	b .L243
.L265:
	ldr r0, =65
	bl putch
	mov r4, r0
	b .L266
.L266:
	mov r4, #18
	mov r5, #18
	ldr r6, =36
	sub r7, r6, r5
	cmp r4, r7
	movne r4, #1
	moveq r4, #0
	bne .L279
	b .L292
.L275:
	b .L266
.L279:
	ldr r0, =66
	bl putch
	mov r4, r0
	b .L280
.L280:
	mov r4, #1
	ldr r5, =8
	cmp r5, r4
	movne r4, #1
	moveq r4, #0
	mov r5, r4
	ldr r4, =1
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L296
	b .L307
.L292:
	b .L280
.L296:
	ldr r0, =67
	bl putch
	mov r4, r0
	b .L297
.L297:
	ldr r4, =4
	cmp r4, #0
	moveq r4, #1
	movne r4, #0
	mov r5, r4
	ldr r4, =3
	cmp r4, r5
	movgt r4, #1
	movle r4, #0
	bgt .L311
	b .L319
.L307:
	b .L297
.L311:
	ldr r0, =68
	bl putch
	mov r4, r0
	b .L312
.L312:
	ldr r4, =102
	cmp r4, #63
	movle r4, #1
	movgt r4, #0
	mov r5, r4
	ldr r4, =1
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L323
	b .L331
.L319:
	b .L312
.L323:
	ldr r0, =69
	bl putch
	mov r4, r0
	b .L324
.L324:
	mov r4, #-1
	ldr r5, =0
	cmp r5, #0
	movgt r5, #1
	movle r5, #0
	ldr r6, =1
	eor r7, r6, r5
	mov r5, r7
	ldr r6, =0
	sub r7, r6, r5
	cmp r7, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, r7
	moveq r4, #1
	movne r4, #0
	beq .L335
	b .L351
.L331:
	b .L324
.L335:
	ldr r0, =70
	bl putch
	mov r4, r0
	b .L336
.L336:
	ldr r0, =10
	bl putch
	mov r4, r0
	ldr r4, =0
	str r4, [fp, #-20]
	ldr r4, =1
	str r4, [fp, #-16]
	ldr r4, =2
	str r4, [fp, #-12]
	ldr r4, =3
	str r4, [fp, #-8]
	ldr r4, =4
	str r4, [fp, #-4]
	b .L363
.L351:
	b .L336
.L363:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L366
	b .L369
.L364:
	ldr r0, =32
	bl putch
	mov r4, r0
	b .L363
.L365:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L378
	b .L383
.L366:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L364
	b .L373
.L369:
	b .L365
.L373:
	b .L365
.L378:
	ldr r0, =67
	bl putch
	mov r4, r0
	b .L379
.L379:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-16]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L392
	b .L405
.L380:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L378
	b .L387
.L383:
	b .L380
.L387:
	b .L379
.L392:
	ldr r0, =72
	bl putch
	mov r4, r0
	b .L393
.L393:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-16]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L422
	b .L433
.L394:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-20]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L392
	b .L416
.L405:
	b .L394
.L416:
	b .L393
.L420:
	ldr r0, =73
	bl putch
	mov r4, r0
	b .L421
.L421:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-16]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r5, #0
	movgt r5, #1
	movle r5, #0
	ldr r6, =1
	eor r7, r6, r5
	mov r5, r7
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L451
	b .L467
.L422:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movne r4, #1
	moveq r4, #0
	bne .L420
	b .L444
.L433:
	b .L421
.L444:
	b .L421
.L448:
	ldr r0, =74
	bl putch
	mov r4, r0
	b .L449
.L449:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-16]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r5, #0
	movgt r5, #1
	movle r5, #0
	ldr r6, =1
	eor r7, r6, r5
	mov r5, r7
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L493
	b .L511
.L450:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L448
	b .L489
.L451:
	ldr r4, [fp, #-8]
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
	blt .L448
	b .L478
.L467:
	b .L450
.L478:
	b .L450
.L489:
	b .L449
.L493:
	ldr r0, =75
	bl putch
	mov r4, r0
	b .L494
.L494:
	ldr r0, =10
	bl putch
	mov r4, r0
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L495:
	ldr r4, [fp, #-8]
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
	blt .L512
	b .L523
.L511:
	b .L495
.L512:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L493
	b .L534
.L523:
	b .L494
.L534:
	b .L494
addr_a:
	.word a
addr_b:
	.word b
addr_d:
	.word d
