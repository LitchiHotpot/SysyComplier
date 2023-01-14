	.arch armv8-a
	.arch_extension crc
	.arm
.data

	.comm arr1, 40, 4
	.comm arr2, 40, 4
	.text
	.global loop1
	.type loop1 , %function
loop1:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #36
.L235:
	str r0, [fp, #-36]
	str r1, [fp, #-32]
	ldr r4, =0
	str r4, [fp, #-28]
	b .L247
.L247:
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-36]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L250
	b .L261
.L248:
	ldr r4, =0
	str r4, [fp, #-24]
	b .L273
.L249:
	add sp, sp, #36
	pop {r4, r5, r6, fp, lr}
	bx lr
.L250:
	ldr r4, [fp, #-28]
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
	blt .L248
	b .L272
.L261:
	b .L249
.L272:
	b .L249
.L273:
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #2
	movlt r4, #1
	movge r4, #0
	blt .L274
	b .L282
.L274:
	ldr r4, =0
	str r4, [fp, #-20]
	b .L283
.L275:
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-28]
	b .L247
.L282:
	b .L275
.L283:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L284
	b .L292
.L284:
	ldr r4, =0
	str r4, [fp, #-16]
	b .L293
.L285:
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-24]
	b .L273
.L292:
	b .L285
.L293:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #4
	movlt r4, #1
	movge r4, #0
	blt .L294
	b .L302
.L294:
	ldr r4, =0
	str r4, [fp, #-12]
	b .L303
.L295:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-20]
	b .L283
.L302:
	b .L295
.L303:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #5
	movlt r4, #1
	movge r4, #0
	blt .L304
	b .L312
.L304:
	ldr r4, =0
	str r4, [fp, #-8]
	b .L313
.L305:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-16]
	b .L293
.L312:
	b .L305
.L313:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #6
	movlt r4, #1
	movge r4, #0
	blt .L314
	b .L322
.L314:
	ldr r4, =0
	str r4, [fp, #-4]
	b .L323
.L315:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-12]
	b .L303
.L322:
	b .L315
.L323:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #2
	movlt r4, #1
	movge r4, #0
	blt .L324
	b .L332
.L324:
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-24]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-36]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-32]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, addr_arr1
	str r5, [r4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L323
.L325:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L313
.L332:
	b .L325
	.global loop2
	.type loop2 , %function
loop2:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #28
.L442:
	ldr r4, =0
	str r4, [fp, #-28]
	b .L450
.L450:
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L451
	b .L459
.L451:
	ldr r4, =0
	str r4, [fp, #-24]
	b .L460
.L452:
	add sp, sp, #28
	pop {r4, r5, r6, fp, lr}
	bx lr
.L459:
	b .L452
.L460:
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #2
	movlt r4, #1
	movge r4, #0
	blt .L461
	b .L469
.L461:
	ldr r4, =0
	str r4, [fp, #-20]
	b .L470
.L462:
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-28]
	b .L450
.L469:
	b .L462
.L470:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L471
	b .L479
.L471:
	ldr r4, =0
	str r4, [fp, #-16]
	b .L480
.L472:
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-24]
	b .L460
.L479:
	b .L472
.L480:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #2
	movlt r4, #1
	movge r4, #0
	blt .L481
	b .L489
.L481:
	ldr r4, =0
	str r4, [fp, #-12]
	b .L490
.L482:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-20]
	b .L470
.L489:
	b .L482
.L490:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #4
	movlt r4, #1
	movge r4, #0
	blt .L491
	b .L499
.L491:
	ldr r4, =0
	str r4, [fp, #-8]
	b .L500
.L492:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-16]
	b .L480
.L499:
	b .L492
.L500:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #8
	movlt r4, #1
	movge r4, #0
	blt .L501
	b .L509
.L501:
	ldr r4, =0
	str r4, [fp, #-4]
	b .L510
.L502:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-12]
	b .L490
.L509:
	b .L502
.L510:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #7
	movlt r4, #1
	movge r4, #0
	blt .L511
	b .L519
.L511:
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-24]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, addr_arr2
	str r6, [r4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L510
.L512:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L500
.L519:
	b .L512
	.global loop3
	.type loop3 , %function
loop3:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #60
.L594:
	ldr r0, [fp, #24]
	str r0, [fp, #-60]
	str r1, [fp, #-56]
	str r2, [fp, #-52]
	str r3, [fp, #-48]
	str r3, [fp, #-44]
	str r3, [fp, #-40]
	str r3, [fp, #-36]
	ldr r4, =0
	str r4, [fp, #-4]
	ldr r4, =0
	str r4, [fp, #-32]
	b .L617
.L617:
	ldr r4, [fp, #-32]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L618
	b .L626
.L618:
	ldr r4, =0
	str r4, [fp, #-28]
	b .L627
.L619:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #60
	pop {r4, r5, r6, fp, lr}
	bx lr
.L626:
	b .L619
.L627:
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #100
	movlt r4, #1
	movge r4, #0
	blt .L628
	b .L636
.L628:
	ldr r4, =0
	str r4, [fp, #-24]
	b .L637
.L629:
	ldr r4, [fp, #-32]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-32]
	ldr r4, [fp, #-32]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-60]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L841
	b .L853
.L636:
	b .L629
.L637:
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1000
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L638
	b .L646
.L638:
	ldr r4, =0
	str r4, [fp, #-20]
	b .L647
.L639:
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-28]
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-56]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L820
	b .L832
.L646:
	b .L639
.L647:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =10000
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L648
	b .L656
.L648:
	ldr r4, =0
	str r4, [fp, #-16]
	b .L657
.L649:
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-24]
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-52]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L799
	b .L811
.L656:
	b .L649
.L657:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =100000
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L658
	b .L666
.L658:
	ldr r4, =0
	str r4, [fp, #-12]
	b .L667
.L659:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-20]
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-48]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L778
	b .L790
.L666:
	b .L659
.L667:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1000000
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L668
	b .L676
.L668:
	ldr r4, =0
	str r4, [fp, #-8]
	b .L677
.L669:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-16]
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-44]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L757
	b .L769
.L676:
	b .L669
.L677:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =10000000
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L678
	b .L686
.L678:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =817
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	ldr r4, addr_arr1
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	ldr r5, addr_arr2
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	add r5, r4, r6
	str r5, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-36]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L715
	b .L727
.L679:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-12]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-40]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L736
	b .L748
.L686:
	b .L679
.L715:
	b .L679
.L716:
	b .L677
.L727:
	b .L716
.L736:
	b .L669
.L737:
	b .L667
.L748:
	b .L737
.L757:
	b .L659
.L758:
	b .L657
.L769:
	b .L758
.L778:
	b .L649
.L779:
	b .L647
.L790:
	b .L779
.L799:
	b .L639
.L800:
	b .L637
.L811:
	b .L800
.L820:
	b .L629
.L821:
	b .L627
.L832:
	b .L821
.L841:
	b .L619
.L842:
	b .L617
.L853:
	b .L842
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L859:
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-36]
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-32]
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
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-12]
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-36]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-32]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r0, r4
	mov r1, r5
	bl loop1
	mov r4, r0
	bl loop2
	mov r4, r0
	ldr r4, [fp, #-28]
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
	ldr r7, [fp, #-16]
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-12]
	str r8, [fp, #-40]
	ldr r8, [fp, #-40]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-8]
	cmp r8, #0
	movgt r9, #1
	movle r9, #0
	ldr r9, [fp, #-4]
	cmp r9, #0
	movgt r10, #1
	movle r10, #0
	mov r0, r4
	mov r1, r5
	mov r2, r6
	mov r3, r7
	push {r9}
	push {r8}
	ldr r4, [fp, #-40]
	push {r4}
	bl loop3
	add sp, sp, #12
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
addr_arr1:
	.word arr1
addr_arr2:
	.word arr2
