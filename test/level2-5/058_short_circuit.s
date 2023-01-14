type i32 can not be used in singleExpr in line xx	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global g
.size g, 4
g:
	.word 0
	.text
	.global func
	.type func , %function
func:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L49:
	str r0, [fp, #-4]
	ldr r4, addr_g
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, addr_g
	str r6, [r4]
	ldr r4, addr_g
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	mov r0, r5
	bl putint
	mov r4, r0
	ldr r4, addr_g
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	mov r0, r5
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L74:
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #10
	movgt r4, #1
	movle r4, #0
	bgt .L83
	b .L90
.L80:
	ldr r4, =1
	str r4, [fp, #-4]
	b .L82
.L81:
	ldr r4, =0
	str r4, [fp, #-4]
	b .L82
.L82:
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #11
	movgt r4, #1
	movle r4, #0
	bgt .L106
	b .L113
.L83:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl func
	mov r4, r0
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L80
	b .L97
.L90:
	b .L81
.L97:
	b .L81
.L103:
	ldr r4, =1
	str r4, [fp, #-4]
	b .L105
.L104:
	ldr r4, =0
	str r4, [fp, #-4]
	b .L105
.L105:
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #99
	movle r4, #1
	movgt r4, #0
	ble .L126
	b .L136
.L106:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl func
	mov r4, r0
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L103
	b .L120
.L113:
	b .L104
.L120:
	b .L104
.L126:
	ldr r4, =1
	str r4, [fp, #-4]
	b .L128
.L127:
	ldr r4, =0
	str r4, [fp, #-4]
	b .L128
.L128:
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #100
	movle r4, #1
	movgt r4, #0
	ble .L149
	b .L159
.L129:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl func
	mov r4, r0
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L126
	b .L143
.L136:
	b .L129
.L143:
	b .L127
.L149:
	ldr r4, =1
	str r4, [fp, #-4]
	b .L151
.L150:
	ldr r4, =0
	str r4, [fp, #-4]
	b .L151
.L151:
	ldr r0, =99
	bl func
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	ldr r5, =1
	eor r6, r5, r4
	mov r4, r6
	bgt .L171
	b .L180
.L152:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl func
	mov r4, r0
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L149
	b .L166
.L159:
	b .L152
.L166:
	b .L150
.L168:
	ldr r4, =1
	str r4, [fp, #-4]
	b .L170
.L169:
	ldr r4, =0
	str r4, [fp, #-4]
	b .L170
.L170:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L171:
	ldr r0, =100
	bl func
	mov r4, r0
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L168
	b .L183
.L180:
	b .L169
.L183:
	b .L169
addr_g:
	.word g
