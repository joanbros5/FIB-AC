	.file	"Poker.c"
	.text
	.type	getticks, @function
getticks:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
#APP
# 226 "cycle.h" 1
	rdtsc
# 0 "" 2
#NO_APP
	movl	%eax, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %edx
	salq	$32, %rdx
	orq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	getticks, .-getticks
	.type	elapsed, @function
elapsed:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	js	.L4
	cvtsi2sdq	%rax, %xmm0
	jmp	.L5
.L4:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L5:
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	js	.L6
	cvtsi2sdq	%rax, %xmm1
	jmp	.L7
.L6:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
.L7:
	subsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	elapsed, .-elapsed
	.globl	trad
	.data
	.align 8
	.type	trad, @object
	.size	trad, 13
trad:
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	49
	.byte	74
	.byte	81
	.byte	75
	.byte	65
	.comm	baraja,416,32
	.globl	pareja
	.bss
	.align 4
	.type	pareja, @object
	.size	pareja, 4
pareja:
	.zero	4
	.globl	trio
	.align 4
	.type	trio, @object
	.size	trio, 4
trio:
	.zero	4
	.globl	poker
	.align 4
	.type	poker, @object
	.size	poker, 4
poker:
	.zero	4
	.globl	full
	.align 4
	.type	full, @object
	.size	full, 4
full:
	.zero	4
	.globl	color
	.align 4
	.type	color, @object
	.size	color, 4
color:
	.zero	4
	.globl	nada
	.align 4
	.type	nada, @object
	.size	nada, 4
nada:
	.zero	4
	.globl	doblepareja
	.align 4
	.type	doblepareja, @object
	.size	doblepareja, 4
doblepareja:
	.zero	4
	.globl	escalera
	.align 4
	.type	escalera, @object
	.size	escalera, 4
escalera:
	.zero	4
	.globl	escaleracolor
	.align 4
	.type	escaleracolor, @object
	.size	escaleracolor, 4
escaleracolor:
	.zero	4
	.globl	V
	.align 4
	.type	V, @object
	.size	V, 4
V:
	.zero	4
	.text
	.globl	Init
	.type	Init, @function
Init:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L10
.L11:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, 4(%rax)
	movl	-4(%rbp), %eax
	cltq
	addq	$13, %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-4(%rbp), %eax
	cltq
	addq	$13, %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, 4(%rax)
	movl	-4(%rbp), %eax
	cltq
	addq	$26, %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-4(%rbp), %eax
	cltq
	addq	$26, %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	$2, 4(%rax)
	movl	-4(%rbp), %eax
	cltq
	addq	$39, %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-4(%rbp), %eax
	cltq
	addq	$39, %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	$3, 4(%rax)
	addl	$1, -4(%rbp)
.L10:
	cmpl	$12, -4(%rbp)
	jle	.L11
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Init, .-Init
	.globl	Ordenar
	.type	Ordenar, @function
Ordenar:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L13
.L17:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.L14
.L16:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L15
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	4(%rax), %eax
	movl	%eax, 4(%rdx)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, 4(%rdx)
.L15:
	addl	$1, -8(%rbp)
.L14:
	cmpl	$4, -8(%rbp)
	jle	.L16
	addl	$1, -4(%rbp)
.L13:
	cmpl	$4, -4(%rbp)
	jle	.L17
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Ordenar, .-Ordenar
	.section	.rodata
.LC0:
	.string	"10 - "
.LC1:
	.string	" %c - "
.LC2:
	.string	"COR"
.LC3:
	.string	"PIC"
.LC4:
	.string	"TRE"
.LC5:
	.string	"DIA"
	.text
	.globl	Mostrar
	.type	Mostrar, @function
Mostrar:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$10, %edi
	call	putchar
	movl	$0, -4(%rbp)
	jmp	.L19
.L28:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	cltq
	movzbl	trad(%rax), %eax
	cmpb	$49, %al
	jne	.L20
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	jmp	.L21
.L20:
	movl	-8(%rbp), %eax
	cltq
	movzbl	trad(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
.L21:
	movl	-12(%rbp), %eax
	cmpl	$1, %eax
	je	.L23
	cmpl	$1, %eax
	jg	.L24
	testl	%eax, %eax
	je	.L25
	jmp	.L22
.L24:
	cmpl	$2, %eax
	je	.L26
	cmpl	$3, %eax
	je	.L27
	jmp	.L22
.L25:
	movl	$.LC2, %edi
	call	puts
	jmp	.L22
.L23:
	movl	$.LC3, %edi
	call	puts
	jmp	.L22
.L27:
	movl	$.LC4, %edi
	call	puts
	jmp	.L22
.L26:
	movl	$.LC5, %edi
	call	puts
	nop
.L22:
	addl	$1, -4(%rbp)
.L19:
	cmpl	$4, -4(%rbp)
	jle	.L28
	movl	$10, %edi
	call	putchar
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Mostrar, .-Mostrar
	.section	.rodata
.LC6:
	.string	"%s"
	.text
	.globl	verbose
	.type	verbose, @function
verbose:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	V(%rip), %eax
	testl	%eax, %eax
	je	.L30
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
.L30:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	verbose, .-verbose
	.globl	Color
	.type	Color, @function
Color:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jne	.L32
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jne	.L32
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jne	.L32
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jne	.L32
	movl	$1, %eax
	jmp	.L34
.L32:
	movl	$0, %eax
.L34:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Color, .-Color
	.globl	Poker
	.type	Poker, @function
Poker:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L36
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L36
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L36
	movl	$1, %eax
	jmp	.L37
.L36:
	movl	$0, %eax
.L37:
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L38
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L38
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L38
	movl	$1, %eax
	jmp	.L39
.L38:
	movl	$0, %eax
.L39:
	movl	%eax, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L40
	cmpl	$0, -8(%rbp)
	je	.L41
.L40:
	movl	$1, %eax
	jmp	.L43
.L41:
	movl	$0, %eax
.L43:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Poker, .-Poker
	.globl	Full
	.type	Full, @function
Full:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L45
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L45
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L45
	movl	$1, %eax
	jmp	.L46
.L45:
	movl	$0, %eax
.L46:
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L47
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L47
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L47
	movl	$1, %eax
	jmp	.L48
.L47:
	movl	$0, %eax
.L48:
	movl	%eax, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L49
	cmpl	$0, -8(%rbp)
	je	.L50
.L49:
	movl	$1, %eax
	jmp	.L52
.L50:
	movl	$0, %eax
.L52:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	Full, .-Full
	.globl	Escalera
	.type	Escalera, @function
Escalera:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movq	-24(%rbp), %rdx
	addq	$8, %rdx
	movl	(%rdx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.L54
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movq	-24(%rbp), %rdx
	addq	$16, %rdx
	movl	(%rdx), %edx
	subl	$2, %edx
	cmpl	%edx, %eax
	jne	.L54
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movq	-24(%rbp), %rdx
	addq	$24, %rdx
	movl	(%rdx), %edx
	subl	$3, %edx
	cmpl	%edx, %eax
	jne	.L54
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movq	-24(%rbp), %rdx
	addq	$32, %rdx
	movl	(%rdx), %edx
	subl	$4, %edx
	cmpl	%edx, %eax
	jne	.L54
	movl	$1, %eax
	jmp	.L55
.L54:
	movl	$0, %eax
.L55:
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L56
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L56
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L56
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L56
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	cmpl	$12, %eax
	jne	.L56
	movl	$1, %eax
	jmp	.L57
.L56:
	movl	$0, %eax
.L57:
	movl	%eax, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L58
	cmpl	$0, -8(%rbp)
	je	.L59
.L58:
	movl	$1, %eax
	jmp	.L61
.L59:
	movl	$0, %eax
.L61:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	Escalera, .-Escalera
	.globl	Trio
	.type	Trio, @function
Trio:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L63
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L63
	movl	$1, %eax
	jmp	.L64
.L63:
	movl	$0, %eax
.L64:
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L65
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L65
	movl	$1, %eax
	jmp	.L66
.L65:
	movl	$0, %eax
.L66:
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L67
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L67
	movl	$1, %eax
	jmp	.L68
.L67:
	movl	$0, %eax
.L68:
	movl	%eax, -12(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L69
	cmpl	$0, -8(%rbp)
	jne	.L69
	cmpl	$0, -12(%rbp)
	je	.L70
.L69:
	movl	$1, %eax
	jmp	.L72
.L70:
	movl	$0, %eax
.L72:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	Trio, .-Trio
	.globl	Pareja
	.type	Pareja, @function
Pareja:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L74
	cmpl	$0, -8(%rbp)
	jne	.L74
	cmpl	$0, -12(%rbp)
	jne	.L74
	cmpl	$0, -16(%rbp)
	je	.L75
.L74:
	movl	$1, %eax
	jmp	.L77
.L75:
	movl	$0, %eax
.L77:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	Pareja, .-Pareja
	.globl	DoblePareja
	.type	DoblePareja, @function
DoblePareja:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L79
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L79
	movl	$1, %eax
	jmp	.L80
.L79:
	movl	$0, %eax
.L80:
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L81
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L81
	movl	$1, %eax
	jmp	.L82
.L81:
	movl	$0, %eax
.L82:
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L83
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L83
	movl	$1, %eax
	jmp	.L84
.L83:
	movl	$0, %eax
.L84:
	movl	%eax, -12(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L85
	cmpl	$0, -8(%rbp)
	jne	.L85
	cmpl	$0, -12(%rbp)
	je	.L86
.L85:
	movl	$1, %eax
	jmp	.L88
.L86:
	movl	$0, %eax
.L88:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	DoblePareja, .-DoblePareja
	.section	.rodata
.LC7:
	.string	"EC "
.LC8:
	.string	"PK "
.LC9:
	.string	"FL "
.LC10:
	.string	"CL "
.LC11:
	.string	"ES "
.LC12:
	.string	"TR "
.LC13:
	.string	"PP "
.LC14:
	.string	"PR "
.LC15:
	.string	" . "
	.text
	.globl	Test
	.type	Test, @function
Test:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Color
	testl	%eax, %eax
	je	.L90
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Escalera
	testl	%eax, %eax
	je	.L90
	movl	escaleracolor(%rip), %eax
	addl	$1, %eax
	movl	%eax, escaleracolor(%rip)
	movl	$.LC7, %edi
	call	verbose
	jmp	.L99
.L90:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Poker
	testl	%eax, %eax
	je	.L92
	movl	poker(%rip), %eax
	addl	$1, %eax
	movl	%eax, poker(%rip)
	movl	$.LC8, %edi
	call	verbose
	jmp	.L99
.L92:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Full
	testl	%eax, %eax
	je	.L93
	movl	full(%rip), %eax
	addl	$1, %eax
	movl	%eax, full(%rip)
	movl	$.LC9, %edi
	call	verbose
	jmp	.L99
.L93:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Color
	testl	%eax, %eax
	je	.L94
	movl	color(%rip), %eax
	addl	$1, %eax
	movl	%eax, color(%rip)
	movl	$.LC10, %edi
	call	verbose
	jmp	.L99
.L94:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Escalera
	testl	%eax, %eax
	je	.L95
	movl	escalera(%rip), %eax
	addl	$1, %eax
	movl	%eax, escalera(%rip)
	movl	$.LC11, %edi
	call	verbose
	jmp	.L99
.L95:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Trio
	testl	%eax, %eax
	je	.L96
	movl	trio(%rip), %eax
	addl	$1, %eax
	movl	%eax, trio(%rip)
	movl	$.LC12, %edi
	call	verbose
	jmp	.L99
.L96:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DoblePareja
	testl	%eax, %eax
	je	.L97
	movl	doblepareja(%rip), %eax
	addl	$1, %eax
	movl	%eax, doblepareja(%rip)
	movl	$.LC13, %edi
	call	verbose
	jmp	.L99
.L97:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Pareja
	testl	%eax, %eax
	je	.L98
	movl	pareja(%rip), %eax
	addl	$1, %eax
	movl	%eax, pareja(%rip)
	movl	$.LC14, %edi
	call	verbose
	jmp	.L99
.L98:
	movl	nada(%rip), %eax
	addl	$1, %eax
	movl	%eax, nada(%rip)
	movl	$.LC15, %edi
	call	verbose
.L99:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	Test, .-Test
	.globl	Repartir
	.type	Repartir, @function
Repartir:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	-12(%rbp), %eax
	cltq
	movl	baraja(,%rax,8), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	movl	baraja(,%rax,8), %eax
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	movl	baraja(,%rax,8), %eax
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	movl	baraja(,%rax,8), %eax
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	movl	baraja(,%rax,8), %eax
	movl	%eax, (%rdx)
	movl	-12(%rbp), %eax
	cltq
	movl	baraja+4(,%rax,8), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	movl	baraja+4(,%rax,8), %eax
	movl	%eax, 4(%rdx)
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	movl	baraja+4(,%rax,8), %eax
	movl	%eax, 4(%rdx)
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	movl	baraja+4(,%rax,8), %eax
	movl	%eax, 4(%rdx)
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	movl	baraja+4(,%rax,8), %eax
	movl	%eax, 4(%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	Repartir, .-Repartir
	.globl	PierdeTiempo
	.type	PierdeTiempo, @function
PierdeTiempo:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	$0, -16(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L102
.L105:
	movl	$1, -8(%rbp)
	jmp	.L103
.L104:
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, -16(%rbp)
	addl	$1, -8(%rbp)
.L103:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L104
	addl	$1, -4(%rbp)
.L102:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L105
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	PierdeTiempo, .-PierdeTiempo
	.section	.rodata
.LC16:
	.string	"  \n"
	.align 8
.LC17:
	.string	"%7d COMBINACIONES:\n - ESCALERA COLOR (%d)\n - POKER (%d)\n - FULL (%d)\n - COLOR (%d)\n - ESCALERA (%d)\n - TRIO (%d)\n - DOBLE PAREJA (%d)\n - PAREJA (%d)\n - NADA (%d) \n"
	.align 8
.LC18:
	.string	"Pierdo algo de tiempo mientras calculo el numero: %ld\n"
.LC19:
	.string	"Milisegundos Tot = %9f\n"
.LC20:
	.string	"Ciclos = %lf\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movl	%edi, -116(%rbp)
	movq	%rsi, -128(%rbp)
	movl	$0, -40(%rbp)
	call	GetTime
	movd	%xmm0, %eax
	movl	%eax, -44(%rbp)
	call	getticks
	movq	%rax, -56(%rbp)
	cmpl	$2, -116(%rbp)
	jne	.L108
	movq	-128(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, V(%rip)
	jmp	.L109
.L108:
	movl	$0, V(%rip)
.L109:
	movl	$baraja, %edi
	call	Init
	movl	$0, -20(%rbp)
	jmp	.L110
.L120:
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.L111
.L119:
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.L112
.L118:
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L113
.L117:
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.L114
.L116:
	movl	-40(%rbp), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%rax,4), %edx
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	jne	.L115
	movl	$.LC16, %edi
	call	verbose
.L115:
	movl	-36(%rbp), %r8d
	movl	-32(%rbp), %edi
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %esi
	leaq	-112(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	Repartir
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	Ordenar
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	Test
	addl	$1, -40(%rbp)
	addl	$1, -36(%rbp)
.L114:
	cmpl	$51, -36(%rbp)
	jle	.L116
	addl	$1, -32(%rbp)
.L113:
	cmpl	$50, -32(%rbp)
	jle	.L117
	addl	$1, -28(%rbp)
.L112:
	cmpl	$49, -28(%rbp)
	jle	.L118
	addl	$1, -24(%rbp)
.L111:
	cmpl	$48, -24(%rbp)
	jle	.L119
	addl	$1, -20(%rbp)
.L110:
	cmpl	$47, -20(%rbp)
	jle	.L120
	movl	$10, %edi
	call	putchar
	movl	nada(%rip), %r10d
	movl	pareja(%rip), %r9d
	movl	doblepareja(%rip), %r8d
	movl	trio(%rip), %edi
	movl	escalera(%rip), %esi
	movl	color(%rip), %ebx
	movl	full(%rip), %r11d
	movl	poker(%rip), %ecx
	movl	escaleracolor(%rip), %edx
	movl	-40(%rbp), %eax
	subq	$8, %rsp
	pushq	%r10
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	pushq	%rsi
	movl	%ebx, %r9d
	movl	%r11d, %r8d
	movl	%eax, %esi
	movl	$.LC17, %edi
	movl	$0, %eax
	call	printf
	addq	$48, %rsp
	movl	$10000, %edi
	call	PierdeTiempo
	movq	%rax, %rsi
	movl	$.LC18, %edi
	movl	$0, %eax
	call	printf
	call	GetTime
	movd	%xmm0, %eax
	movl	%eax, -60(%rbp)
	movss	-60(%rbp), %xmm0
	subss	-44(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.LC19, %edi
	movl	$1, %eax
	call	printf
	call	getticks
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	elapsed
	movl	$.LC20, %edi
	movl	$1, %eax
	call	printf
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	main, .-main
	.ident	"GCC: (SUSE Linux) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
