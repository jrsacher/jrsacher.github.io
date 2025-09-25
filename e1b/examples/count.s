	.file	"count.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%i\n"
.LC2:
	.string	"Time in C: %f seconds \n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# count.c:12:     clock_t start = clock();
	call	clock@PLT	#
	movq	%rax, -16(%rbp)	# tmp89, start
# count.c:14:     int n = 10000000;
	movl	$10000000, -20(%rbp)	#, n
# count.c:16:     for (int i = 0; i < n; i++)
	movl	$0, -24(%rbp)	#, i
# count.c:16:     for (int i = 0; i < n; i++)
	jmp	.L2	#
.L4:
# count.c:19:         if (i % (n / 10) == 0)
	movl	-20(%rbp), %eax	# n, tmp90
	movslq	%eax, %rdx	# tmp90, tmp91
	imulq	$1717986919, %rdx, %rdx	#, tmp91, tmp92
	shrq	$32, %rdx	#, tmp93
	sarl	$2, %edx	#, tmp94
	sarl	$31, %eax	#, tmp95
	movl	%edx, %esi	# tmp94, tmp94
	subl	%eax, %esi	# tmp95, tmp94
# count.c:19:         if (i % (n / 10) == 0)
	movl	-24(%rbp), %eax	# i, tmp96
	cltd
	idivl	%esi	# _1
	movl	%edx, %ecx	# tmp97, tmp97
	movl	%ecx, %eax	# tmp97, _2
# count.c:19:         if (i % (n / 10) == 0)
	testl	%eax, %eax	# _2
	jne	.L3	#,
# count.c:22:             printf("%i\n", i);
	movl	-24(%rbp), %eax	# i, tmp99
	movl	%eax, %esi	# tmp99,
	leaq	.LC0(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	movl	$0, %eax	#,
	call	printf@PLT	#
.L3:
# count.c:16:     for (int i = 0; i < n; i++)
	addl	$1, -24(%rbp)	#, i
.L2:
# count.c:16:     for (int i = 0; i < n; i++)
	movl	-24(%rbp), %eax	# i, tmp101
	cmpl	-20(%rbp), %eax	# n, tmp101
	jl	.L4	#,
# count.c:26:     clock_t end = clock();
	call	clock@PLT	#
	movq	%rax, -8(%rbp)	# tmp102, end
# count.c:28:     printf("Time in C: %f seconds \n", (double)(end - start) / 1000000);
	movq	-8(%rbp), %rax	# end, tmp103
	subq	-16(%rbp), %rax	# start, _3
# count.c:28:     printf("Time in C: %f seconds \n", (double)(end - start) / 1000000);
	pxor	%xmm0, %xmm0	# _4
	cvtsi2sdq	%rax, %xmm0	# _3, _4
# count.c:28:     printf("Time in C: %f seconds \n", (double)(end - start) / 1000000);
	movsd	.LC1(%rip), %xmm1	#, tmp104
	divsd	%xmm1, %xmm0	# tmp104, _4
	movq	%xmm0, %rax	# _4, _5
	movq	%rax, %xmm0	# _5,
	leaq	.LC2(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	movl	$1, %eax	#,
	call	printf@PLT	#
	movl	$0, %eax	#, _17
# count.c:29: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
