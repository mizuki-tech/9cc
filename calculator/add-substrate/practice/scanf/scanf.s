	.file	"scanf.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"\346\225\264\346\225\260\343\202\222\345\205\245\345\212\233\343\201\227\343\201\246\343\201\217\343\201\240\343\201\225\343\201\204"
.LC1:
	.string	"%d"
.LC2:
	.string	"%d * %d = %d \343\201\247\343\201\231\343\201\255\343\200\202\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -12[rbp]
	mov	ecx, edx
	imul	ecx, eax
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
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
