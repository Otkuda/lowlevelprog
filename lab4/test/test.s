	.file	"test.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	li	a0,0
	ret
	.size	main, .-main
	.ident	"GCC: (SiFive GCC 10.1.0-2020.08.2) 10.1.0"
