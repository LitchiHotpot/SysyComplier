	.arch armv8-a
	.arch_extension crc
	.arm
.data

	.comm map, 40, 4
	.comm indegree, 40, 4
	.comm queue, 40, 4
	.text
	.global topo
	.type topo , %function
topo:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L78:
	str r0, [fp, #-20]
	ldr r4, =0
	str r4, [fp, #-16]
	ldr r4, =0
	str r4, [fp, #-12]
	ldr r4, =1
	str r4, [fp, #-8]
	ldr r4, =1
	str r4, [fp, #-4]
	b .L85
.L85:
	ldr r4, [fp, #-8]
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
	ble .L86
	b .L98
.L86:
	ldr r4, =1
	str r4, [fp, #-4]
	b .L99
.L87:
	ldr r4, =0
	str r4, [fp, #-8]
	b .L190
.L98:
	b .L87
.L99:
	ldr r4, [fp, #-4]
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
	ble .L100
	b .L112
.L100:
	ldr r4, addr_indegree
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	cmp r5, #0
	moveq r4, #1
	movne r4, #0
	beq .L113
	b .L121
.L101:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_queue
	str r4, [r5]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-12]
	ldr r4, =1
	ldr r5, =0
	sub r6, r5, r4
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, addr_indegree
	str r6, [r4]
	ldr r4, =1
	str r4, [fp, #-4]
	b .L149
.L112:
	b .L101
.L113:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-16]
	b .L101
.L114:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L99
.L121:
	b .L114
.L149:
	ldr r4, [fp, #-4]
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
	ble .L150
	b .L162
.L150:
	ldr r4, addr_map
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	bgt .L163
	b .L167
.L151:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L85
.L162:
	b .L151
.L163:
	ldr r4, addr_indegree
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =1
	sub r6, r5, r4
	ldr r4, addr_indegree
	str r6, [r4]
	b .L164
.L164:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L149
.L167:
	b .L164
.L190:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-20]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L191
	b .L203
.L191:
	ldr r4, addr_queue
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
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L190
.L192:
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L203:
	b .L192
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L221:
	ldr r4, =1
	str r4, [fp, #-4]
	ldr r4, =5
	str r4, [fp, #-12]
	b .L225
.L225:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L226
	b .L238
.L226:
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	b .L243
.L227:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl topo
	mov r4, r0
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, fp, lr}
	bx lr
.L238:
	b .L227
.L243:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L244
	b .L252
.L244:
	ldr r4, =1
	ldr r5, addr_map
	str r4, [r5]
	ldr r4, addr_indegree
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =1
	add r6, r5, r4
	ldr r4, addr_indegree
	str r6, [r4]
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	b .L243
.L245:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L225
.L252:
	b .L245
addr_map:
	.word map
addr_indegree:
	.word indegree
addr_queue:
	.word queue
