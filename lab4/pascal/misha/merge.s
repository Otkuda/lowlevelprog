	.file	"merge.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	mergeMas
	.type	mergeMas, @function
mergeMas:
	ble	a5,zero,.L1
	mv	a6,a2
	li	a7,0
	li	t3,0
	li	t1,0
	j	.L7
.L4:
	sw	a2,0(a6)
	addi	t3,t3,1
.L5:
	addi	a7,a7,1
	addi	a6,a6,4
	beq	a5,a7,.L1
.L7:
	slli	a2,t1,2
	add	a2,a0,a2
	lw	t4,0(a2)
	slli	a2,t3,2
	add	a2,a1,a2
	lw	a2,0(a2)
	bgt	t4,a2,.L3
	ble	a3,t1,.L4
	sw	t4,0(a6)
	addi	t1,t1,1
	j	.L5
.L3:
	ble	a4,t3,.L6
	sw	a2,0(a6)
	addi	t3,t3,1
	j	.L5
.L6:
	sw	t4,0(a6)
	addi	t1,t1,1
	j	.L5
.L1:
	ret
	.size	mergeMas, .-mergeMas
	.ident	"GCC: (SiFive GCC 10.1.0-2020.08.2) 10.1.0"
