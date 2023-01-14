	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global g
.size g, 4
g:
	.word 0
.global h
.size h, 4
h:
	.word 0
.global f
.size f, 4
f:
	.word 0
.global e
.size e, 4
e:
	.word 0
	.text
	.global EightWhile
	.type EightWhile , %function
EightWhile:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L85:
	ldr r4, =5
	str r4, [fp, #-16]
	ldr r4, =6
	str r4, [fp, #-12]
	ldr r4, =7
	str r4, [fp, #-8]
	ldr r4, =10
	str r4, [fp, #-4]
	b .L90
.L90:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #20
	movlt r4, #1
	movge r4, #0
	blt .L91
	b .L99
.L91:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r4, r5
	str r6, [fp, #-16]
	b .L107
.L92:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-4]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	add r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, addr_e
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r7, #1
	movle r7, #0
	add r7, r5, r4
	ldr r4, addr_g
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	sub r4, r7, r5
	ldr r5, addr_h
	ldr r7, [r5]
	cmp r7, #0
	movgt r5, #1
	movle r5, #0
	add r5, r4, r7
	sub r4, r6, r5
	mov r0, r4
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L99:
	b .L92
.L107:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L108
	b .L116
.L108:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-12]
	b .L124
.L109:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	sub r6, r4, r5
	str r6, [fp, #-12]
	b .L90
.L116:
	b .L109
.L124:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #7
	moveq r4, #1
	movne r4, #0
	beq .L125
	b .L133
.L125:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	sub r6, r4, r5
	str r6, [fp, #-8]
	b .L141
.L126:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L107
.L133:
	b .L126
.L141:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #20
	movlt r4, #1
	movge r4, #0
	blt .L142
	b .L150
.L142:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L158
.L143:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	sub r6, r4, r5
	str r6, [fp, #-4]
	b .L124
.L150:
	b .L143
.L158:
	ldr r4, addr_e
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	cmp r5, #1
	movgt r4, #1
	movle r4, #0
	bgt .L159
	b .L167
.L159:
	ldr r4, addr_e
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =1
	sub r6, r5, r4
	ldr r4, addr_e
	str r6, [r4]
	b .L175
.L160:
	ldr r4, addr_e
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =1
	add r6, r5, r4
	ldr r4, addr_e
	str r6, [r4]
	b .L141
.L167:
	b .L160
.L175:
	ldr r4, addr_f
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	cmp r5, #2
	movgt r4, #1
	movle r4, #0
	bgt .L176
	b .L184
.L176:
	ldr r4, addr_f
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =2
	sub r6, r5, r4
	ldr r4, addr_f
	str r6, [r4]
	b .L192
.L177:
	ldr r4, addr_f
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =1
	add r6, r5, r4
	ldr r4, addr_f
	str r6, [r4]
	b .L158
.L184:
	b .L177
.L192:
	ldr r4, addr_g
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	cmp r5, #3
	movlt r4, #1
	movge r4, #0
	blt .L193
	b .L201
.L193:
	ldr r4, addr_g
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =10
	add r6, r5, r4
	ldr r4, addr_g
	str r6, [r4]
	b .L209
.L194:
	ldr r4, addr_g
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =8
	sub r6, r5, r4
	ldr r4, addr_g
	str r6, [r4]
	b .L175
.L201:
	b .L194
.L209:
	ldr r4, addr_h
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	cmp r5, #10
	movlt r4, #1
	movge r4, #0
	blt .L210
	b .L218
.L210:
	ldr r4, addr_h
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =8
	add r6, r5, r4
	ldr r4, addr_h
	str r6, [r4]
	b .L209
.L211:
	ldr r4, addr_h
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =1
	sub r6, r5, r4
	ldr r4, addr_h
	str r6, [r4]
	b .L192
.L218:
	b .L211
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L328:
	ldr r4, =1
	ldr r5, addr_g
	str r4, [r5]
	ldr r4, =2
	ldr r5, addr_h
	str r4, [r5]
	ldr r4, =4
	ldr r5, addr_e
	str r4, [r5]
	ldr r4, =6
	ldr r5, addr_f
	str r4, [r5]
	bl EightWhile
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #0
	pop {r4, r5, fp, lr}
	bx lr
addr_g:
	.word g
addr_h:
	.word h
addr_f:
	.word f
addr_e:
	.word e
