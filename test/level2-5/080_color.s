	.arch armv8-a
	.arch_extension crc
	.arm
.data

	.comm dp, 755521952, 4
	.comm list, 800, 4
	.comm cns, 80, 4
.section .rodata

.global maxn
.size maxn, 4
maxn:
	.word 18
.global mod
.size mod, 4
mod:
	.word 1000000007
	.text
	.global equal
	.type equal , %function
equal:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L212:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L217
	b .L229
.L217:
	mov r0, #1
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L218:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L229:
	b .L218
	.global dfs
	.type dfs , %function
dfs:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #52
.L230:
	ldr r0, [fp, #40]
	str r0, [fp, #-28]
	str r1, [fp, #-24]
	str r2, [fp, #-20]
	str r3, [fp, #-16]
	str r3, [fp, #-12]
	str r3, [fp, #-8]
	ldr r4, addr_dp
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
	bne .L243
	b .L255
.L243:
	ldr r4, addr_dp
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	mov r0, r5
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L244:
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
	cmp r5, #0
	moveq r4, #1
	movne r4, #0
	beq .L260
	b .L296
.L255:
	b .L244
.L260:
	mov r0, #1
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L261:
	ldr r4, =0
	str r4, [fp, #-4]
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L298
	b .L302
.L296:
	b .L261
.L298:
	ldr r4, [fp, #-4]
	str r4, [fp, #-32]
	ldr r4, [fp, #-32]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r0, r5
	ldr r1, =2
	bl equal
	mov r5, r0
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r6, r5
	sub r5, r4, r6
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, =1
	sub r7, r4, r6
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-20]
	cmp r6, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-16]
	cmp r8, #0
	movgt r9, #1
	movle r9, #0
	ldr r9, [fp, #-12]
	cmp r9, #0
	movgt r10, #1
	movle r10, #0
	mov r0, r7
	mov r1, r4
	mov r2, r6
	mov r3, r8
	ldr r4, =1
	push {v850}
	push {r9}
	bl dfs
	add sp, sp, #8
	mov r4, r0
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	mov r6, r4
	mul r4, r5, r6
	ldr r5, [fp, #-32]
	add r6, r5, r4
	ldr r4, addr_mod
	ldr r5, [r4]
	sdiv r4, r6, r5
	mul r4, r4, r5
	sub r5, r6, r4
	str r5, [fp, #-4]
	b .L299
.L299:
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L364
	b .L368
.L302:
	b .L299
.L364:
	ldr r4, [fp, #-4]
	str r4, [fp, #-40]
	ldr r4, [fp, #-40]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r0, r5
	ldr r1, =3
	bl equal
	mov r5, r0
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r6, r5
	sub r5, r4, r6
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, =1
	add r7, r4, r6
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, =1
	sub r8, r4, r6
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-16]
	cmp r6, #0
	movgt r9, #1
	movle r9, #0
	ldr r9, [fp, #-12]
	cmp r9, #0
	movgt r10, #1
	movle r10, #0
	mov r0, r7
	mov r1, r8
	mov r2, r4
	mov r3, r6
	ldr r4, =2
	push {v855}
	push {r9}
	bl dfs
	add sp, sp, #8
	mov r4, r0
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	mov r6, r4
	mul r4, r5, r6
	ldr r5, [fp, #-40]
	add r6, r5, r4
	ldr r4, addr_mod
	ldr r5, [r4]
	sdiv r4, r6, r5
	mul r4, r4, r5
	sub r5, r6, r4
	str r5, [fp, #-4]
	b .L365
.L365:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L433
	b .L437
.L368:
	b .L365
.L433:
	ldr r4, [fp, #-4]
	str r4, [fp, #-44]
	ldr r4, [fp, #-44]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r0, r5
	ldr r1, =4
	bl equal
	mov r5, r0
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r6, r5
	sub r5, r4, r6
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-24]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	ldr r7, =1
	add r8, r6, r7
	ldr r6, [fp, #-20]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	ldr r7, =1
	sub r9, r6, r7
	ldr r6, [fp, #-16]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	ldr r7, [fp, #-12]
	cmp r7, #0
	movgt r10, #1
	movle r10, #0
	mov r0, r4
	mov r1, r8
	mov r2, r9
	mov r3, r6
	ldr r4, =3
	push {v860}
	push {r7}
	bl dfs
	add sp, sp, #8
	mov r4, r0
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	mov r6, r4
	mul r4, r5, r6
	ldr r5, [fp, #-44]
	add r6, r5, r4
	ldr r4, addr_mod
	ldr r5, [r4]
	sdiv r4, r6, r5
	mul r4, r4, r5
	sub r5, r6, r4
	str r5, [fp, #-4]
	b .L434
.L434:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L502
	b .L506
.L437:
	b .L434
.L502:
	ldr r4, [fp, #-4]
	str r4, [fp, #-48]
	ldr r4, [fp, #-48]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r0, r5
	ldr r1, =5
	bl equal
	mov r5, r0
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r6, r5
	sub r5, r4, r6
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-24]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	ldr r7, [fp, #-20]
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, =1
	add r9, r7, r8
	ldr r7, [fp, #-16]
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, =1
	sub r10, r7, r8
	ldr r7, [fp, #-12]
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	mov r0, r4
	mov r1, r6
	mov r2, r9
	mov r3, r10
	ldr r4, =4
	push {v865}
	push {r7}
	bl dfs
	add sp, sp, #8
	mov r4, r0
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	mov r6, r4
	mul r4, r5, r6
	ldr r5, [fp, #-48]
	add r6, r5, r4
	ldr r4, addr_mod
	ldr r5, [r4]
	sdiv r4, r6, r5
	mul r5, r4, r5
	sub r4, r6, r5
	str r4, [fp, #-4]
	b .L503
.L503:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L571
	b .L575
.L506:
	b .L503
.L571:
	ldr r4, [fp, #-4]
	str r4, [fp, #-36]
	ldr r4, [fp, #-36]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, [fp, #-12]
	str r4, [fp, #-52]
	ldr r4, [fp, #-52]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
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
	ldr r8, =1
	add r9, r7, r8
	ldr r7, [fp, #-12]
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, =1
	sub r10, r7, r8
	mov r0, r4
	mov r1, r5
	mov r2, r6
	mov r3, r9
	ldr r4, =5
	push {v870}
	push {r10}
	bl dfs
	add sp, sp, #8
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r5, r4
	ldr r4, [fp, #-52]
	mul r6, r4, r5
	ldr r4, [fp, #-36]
	add r5, r4, r6
	ldr r4, addr_mod
	ldr r6, [r4]
	sdiv r4, r5, r6
	mul r4, r4, r6
	sub r6, r5, r4
	str r6, [fp, #-4]
	b .L572
.L572:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_mod
	ldr r6, [r5]
	sdiv r5, r4, r6
	mul r6, r5, r6
	sub r5, r4, r6
	ldr r4, addr_dp
	str r5, [r4]
	ldr r4, addr_dp
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	mov r0, r5
	add sp, sp, #28
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L575:
	b .L572
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #32
.L642:
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-32]
	ldr r4, =0
	str r4, [fp, #-28]
	b .L649
.L649:
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_maxn
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L650
	b .L661
.L650:
	ldr r4, =0
	str r4, [fp, #-24]
	b .L663
.L651:
	ldr r4, =0
	str r4, [fp, #-28]
	b .L775
.L661:
	b .L651
.L663:
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_maxn
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L664
	b .L675
.L664:
	ldr r4, =0
	str r4, [fp, #-20]
	b .L677
.L665:
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-28]
	b .L649
.L675:
	b .L665
.L677:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_maxn
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L678
	b .L689
.L678:
	ldr r4, =0
	str r4, [fp, #-16]
	b .L691
.L679:
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-24]
	b .L663
.L689:
	b .L679
.L691:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_maxn
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L692
	b .L703
.L692:
	ldr r4, =0
	str r4, [fp, #-12]
	b .L705
.L693:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-20]
	b .L677
.L703:
	b .L693
.L705:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_maxn
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L706
	b .L717
.L706:
	ldr r4, =0
	str r4, [fp, #-8]
	b .L719
.L707:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-16]
	b .L691
.L717:
	b .L707
.L719:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #7
	movlt r4, #1
	movge r4, #0
	blt .L720
	b .L728
.L720:
	ldr r4, =1
	ldr r5, =0
	sub r6, r5, r4
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, addr_dp
	str r6, [r4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L719
.L721:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-12]
	b .L705
.L728:
	b .L721
.L775:
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
	blt .L776
	b .L788
.L776:
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_list
	str r4, [r5]
	ldr r4, addr_cns
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =1
	add r6, r5, r4
	ldr r4, addr_cns
	str r6, [r4]
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-28]
	b .L775
.L777:
	ldr r4, addr_cns
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, addr_cns
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, addr_cns
	ldr r7, [r4]
	cmp r7, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, addr_cns
	ldr r8, [r4]
	cmp r8, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, addr_cns
	ldr r9, [r4]
	cmp r9, #0
	movgt r4, #1
	movle r4, #0
	mov r0, r5
	mov r1, r6
	mov r2, r7
	mov r3, r8
	ldr r4, =0
	push {v907}
	push {r9}
	bl dfs
	add sp, sp, #8
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
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #32
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L788:
	b .L777
addr_maxn:
	.word maxn
addr_mod:
	.word mod
addr_dp:
	.word dp
addr_list:
	.word list
addr_cns:
	.word cns
