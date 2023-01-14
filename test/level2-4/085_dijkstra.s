	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global n
.size n, 4
n:
	.word 0
.global m
.size m, 4
m:
	.word 0
.global v1
.size v1, 4
v1:
	.word 0
.global v2
.size v2, 4
v2:
	.word 0
.global w
.size w, 4
w:
	.word 0
	.comm e, 64, 4
	.comm book, 64, 4
	.comm dis, 64, 4
.section .rodata

.global INF
.size INF, 4
INF:
	.word 65535
	.text
	.global Dijkstra
	.type Dijkstra , %function
Dijkstra:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L125:
	ldr r4, =1
	str r4, [fp, #-24]
	b .L128
.L128:
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_n
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L129
	b .L141
.L129:
	ldr r4, addr_e
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, addr_dis
	str r5, [r4]
	ldr r4, =0
	ldr r5, addr_book
	str r4, [r5]
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-24]
	b .L128
.L130:
	ldr r4, =1
	ldr r5, addr_book
	str r4, [r5]
	ldr r4, =1
	str r4, [fp, #-24]
	b .L153
.L141:
	b .L130
.L153:
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_n
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	sub r7, r6, r5
	cmp r4, r7
	movle r4, #1
	movgt r4, #0
	ble .L154
	b .L169
.L154:
	ldr r4, addr_INF
	ldr r5, [r4]
	str r5, [fp, #-16]
	ldr r4, =0
	str r4, [fp, #-12]
	ldr r4, =1
	str r4, [fp, #-8]
	b .L176
.L155:
	add sp, sp, #24
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L169:
	b .L155
.L176:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_n
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L177
	b .L189
.L177:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_dis
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L192
	b .L203
.L178:
	ldr r4, =1
	ldr r5, addr_book
	str r4, [r5]
	ldr r4, =1
	str r4, [fp, #-4]
	b .L227
.L189:
	b .L178
.L190:
	ldr r4, addr_dis
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	str r5, [fp, #-16]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-12]
	b .L191
.L191:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L176
.L192:
	ldr r4, addr_book
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	cmp r5, #0
	moveq r4, #1
	movne r4, #0
	beq .L190
	b .L210
.L203:
	b .L191
.L210:
	b .L191
.L227:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_n
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L228
	b .L240
.L228:
	ldr r4, addr_e
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, addr_INF
	ldr r6, [r4]
	cmp r5, r6
	movlt r4, #1
	movge r4, #0
	blt .L241
	b .L252
.L229:
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-24]
	b .L153
.L240:
	b .L229
.L241:
	ldr r4, addr_dis
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, addr_dis
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, addr_e
	ldr r7, [r4]
	cmp r7, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r7
	cmp r5, r4
	movgt r4, #1
	movle r4, #0
	bgt .L253
	b .L272
.L242:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L227
.L252:
	b .L242
.L253:
	ldr r4, addr_dis
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, addr_e
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	add r4, r5, r6
	ldr r5, addr_dis
	str r4, [r5]
	b .L254
.L254:
	b .L242
.L272:
	b .L254
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L298:
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_n
	str r4, [r5]
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_m
	str r4, [r5]
	ldr r4, =1
	str r4, [fp, #-16]
	b .L308
.L308:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_n
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L309
	b .L321
.L309:
	ldr r4, =1
	str r4, [fp, #-12]
	b .L323
.L310:
	ldr r4, =1
	str r4, [fp, #-16]
	b .L368
.L321:
	b .L310
.L323:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_n
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L324
	b .L336
.L324:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L337
	b .L350
.L325:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-16]
	b .L308
.L336:
	b .L325
.L337:
	ldr r4, =0
	ldr r5, addr_e
	str r4, [r5]
	b .L339
.L338:
	ldr r4, addr_INF
	ldr r5, [r4]
	ldr r4, addr_e
	str r5, [r4]
	b .L339
.L339:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-12]
	b .L323
.L350:
	b .L338
.L368:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_m
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L369
	b .L381
.L369:
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
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_e
	str r4, [r5]
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-16]
	b .L368
.L370:
	bl Dijkstra
	mov r4, r0
	ldr r4, =1
	str r4, [fp, #-16]
	b .L406
.L381:
	b .L370
.L406:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_n
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, r6
	movle r4, #1
	movgt r4, #0
	ble .L407
	b .L419
.L407:
	ldr r4, addr_dis
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
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-16]
	b .L406
.L408:
	ldr r0, =10
	bl putch
	mov r4, r0
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L419:
	b .L408
addr_INF:
	.word INF
addr_e:
	.word e
addr_book:
	.word book
addr_dis:
	.word dis
addr_n:
	.word n
addr_m:
	.word m
addr_v1:
	.word v1
addr_v2:
	.word v2
addr_w:
	.word w
