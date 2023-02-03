	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"%d\t"
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	li	a1,4
	li	a0,0
	call	calloc
	mv	a1,a0
	li	a0,-1
	call	pascal
	li	a0,10
	call	putchar
	li	a1,4
	li	a0,1
	call	calloc
	mv	s0,a0
	mv	a1,a0
	li	a0,0
	call	pascal
	lw	a1,0(s0)
	lui	s1,%hi(.LC0)
	addi	a0,s1,%lo(.LC0)
	call	printf
	li	a0,10
	call	putchar
	li	a1,4
	li	a0,2
	call	calloc
	mv	s0,a0
	mv	a1,a0
	li	a0,1
	call	pascal
	lw	a1,0(s0)
	addi	a0,s1,%lo(.LC0)
	call	printf
	lw	a1,4(s0)
	addi	a0,s1,%lo(.LC0)
	call	printf
	li	a0,10
	call	putchar
	li	a1,4
	li	a0,11
	call	calloc
	mv	s1,a0
	mv	a1,a0
	li	a0,10
	call	pascal
	mv	s0,s1
	addi	s1,s1,44
	lui	s2,%hi(.LC0)
.L2:
	lw	a1,0(s0)
	addi	a0,s2,%lo(.LC0)
	call	printf
	addi	s0,s0,4
	bne	s1,s0,.L2
	li	a0,0
	lw	ra,12(sp)
	lw	s0,8(sp)
	lw	s1,4(sp)
	lw	s2,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: (SiFive GCC 10.1.0-2020.08.2) 10.1.0"
