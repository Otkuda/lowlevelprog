	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"result[%d] = %d\n"
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	lw	a2,8(a5)
	lw	a3,12(a5)
	lw	a4,16(a5)
	sw	a0,28(sp)
	sw	a1,32(sp)
	sw	a2,36(sp)
	sw	a3,40(sp)
	sw	a4,44(sp)
	lw	a1,20(a5)
	lw	a2,24(a5)
	lw	a3,28(a5)
	lw	a4,32(a5)
	lw	a5,36(a5)
	sw	a1,8(sp)
	sw	a2,12(sp)
	sw	a3,16(sp)
	sw	a4,20(sp)
	sw	a5,24(sp)
	li	a1,4
	li	a0,10
	call	calloc
	mv	s1,a0
	li	a5,10
	li	a4,5
	li	a3,5
	mv	a2,a0
	addi	a1,sp,8
	addi	a0,sp,28
	call	mergeMas
	li	s0,0
	lui	s3,%hi(.LC2)
	li	s2,10
.L2:
	lw	a2,0(s1)
	mv	a1,s0
	addi	a0,s3,%lo(.LC2)
	call	printf
	addi	s0,s0,1
	addi	s1,s1,4
	bne	s0,s2,.L2
	li	a0,0
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s1,68(sp)
	lw	s2,64(sp)
	lw	s3,60(sp)
	addi	sp,sp,80
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
.LC1:
	.word	2
	.word	3
	.word	5
	.word	6
	.word	7
	.ident	"GCC: (SiFive GCC 10.1.0-2020.08.2) 10.1.0"
