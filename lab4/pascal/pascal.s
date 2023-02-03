	.file	"pascal.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"pokaz must be greater than zero"
	.text
	.align	2
	.globl	pascal
	.type	pascal, @function
pascal:
	blt	a0,zero,.L14
	mv	a7,a0
	li	a5,1
	sw	a5,0(a1)
	ble	a0,zero,.L7
	addi	a6,a1,8
	li	a0,1
	addi	a2,a1,4
	j	.L6
.L14:
	addi	sp,sp,-16
	sw	ra,12(sp)
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf
	li	a0,-1
	lw	ra,12(sp)
	addi	sp,sp,16
	jr	ra
.L8:
	mv	a0,a5
.L6:
	ble	a0,zero,.L4
	mv	a5,a6
.L5:
	lw	a4,-4(a5)
	lw	a3,-8(a5)
	add	a4,a4,a3
	sw	a4,-4(a5)
	addi	a5,a5,-4
	bne	a5,a2,.L5
.L4:
	addi	a5,a0,1
	addi	a6,a6,4
	bne	a0,a7,.L8
	li	a0,0
	ret
.L7:
	li	a0,0
	ret
	.size	pascal, .-pascal
	.ident	"GCC: (SiFive GCC 10.1.0-2020.08.2) 10.1.0"
