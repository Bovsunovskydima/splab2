	.file	"lab.cpp"
	.intel_syntax noprefix
	.text
	.p2align 4
	.type	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0, @function
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0:
.LFB5407:
	.cfi_startproc
	lea	rax, -1[rdx]
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdx
	mov	rcx, rdi
	mov	r10, rax
	mov	r8, rsi
	mov	r11, rdx
	and	ebx, 1
	shr	r10, 63
	add	r10, rax
	sar	r10
	cmp	rsi, r10
	jl	.L5
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L11:
	mov	rsi, rax
.L5:
	lea	rdx, 1[rsi]
	lea	rax, [rdx+rdx]
	lea	rdx, [rcx+rdx*8]
	lea	rdi, -1[rax]
	movss	xmm1, DWORD PTR [rdx]
	lea	r9, [rcx+rdi*4]
	movss	xmm2, DWORD PTR [r9]
	comiss	xmm2, xmm1
	jbe	.L3
	movaps	xmm1, xmm2
	mov	rdx, r9
	mov	rax, rdi
.L3:
	movss	DWORD PTR [rcx+rsi*4], xmm1
	cmp	r10, rax
	jg	.L11
	test	rbx, rbx
	je	.L10
.L6:
	lea	rdi, -1[rax]
	mov	rsi, rdi
	shr	rsi, 63
	add	rsi, rdi
	sar	rsi
	cmp	rax, r8
	jg	.L9
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L20:
	movss	DWORD PTR [rdx], xmm1
	lea	rdx, -1[rsi]
	mov	rax, rdx
	shr	rax, 63
	add	rax, rdx
	sar	rax
	mov	rdx, rax
	mov	rax, rsi
	cmp	r8, rsi
	jge	.L19
	mov	rsi, rdx
.L9:
	lea	rdi, [rcx+rsi*4]
	lea	rdx, [rcx+rax*4]
	movss	xmm1, DWORD PTR [rdi]
	comiss	xmm0, xmm1
	ja	.L20
.L7:
	movss	DWORD PTR [rdx], xmm0
	pop	rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	lea	rdx, [rdi+rsi*4]
	test	rbx, rbx
	jne	.L7
	mov	rax, r8
	.p2align 4,,10
	.p2align 3
.L10:
	sub	r11, 2
	mov	rsi, r11
	shr	rsi, 63
	add	rsi, r11
	sar	rsi
	cmp	rax, rsi
	jne	.L6
	lea	rax, 1[rax+rax]
	lea	rsi, [rcx+rax*4]
	movss	xmm1, DWORD PTR [rsi]
	movss	DWORD PTR [rdx], xmm1
	mov	rdx, rsi
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L19:
	mov	rdx, rdi
	movss	DWORD PTR [rdx], xmm0
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5407:
	.size	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0, .-_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0
	.p2align 4
	.type	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0, @function
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0:
.LFB5408:
	.cfi_startproc
	push	r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	mov	rax, rsi
	push	r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	sub	rax, rdi
	push	rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	push	rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	mov	rbx, rsi
	sub	rsp, 8
	.cfi_def_cfa_offset 48
	cmp	rax, 64
	jle	.L21
	mov	rbp, rdi
	mov	r13, rdx
	lea	r12, 4[rdi]
	test	rdx, rdx
	je	.L24
.L25:
	mov	rax, rsi
	movq	xmm0, QWORD PTR 0[rbp]
	sub	r13, 1
	movss	xmm3, DWORD PTR -4[rsi]
	sub	rax, rbp
	mov	rdx, rax
	shr	rax, 63
	movaps	xmm4, xmm0
	movaps	xmm1, xmm0
	sar	rdx, 2
	shufps	xmm0, xmm0, 0xe5
	shufps	xmm4, xmm4, 0xe1
	add	rax, rdx
	sar	rax
	lea	rax, 0[rbp+rax*4]
	movss	xmm2, DWORD PTR [rax]
	comiss	xmm2, xmm0
	jbe	.L65
	comiss	xmm3, xmm2
	ja	.L69
	comiss	xmm3, xmm0
	ja	.L72
.L73:
	movlps	QWORD PTR 0[rbp], xmm4
	movss	xmm2, DWORD PTR -4[rsi]
.L34:
	mov	rax, rsi
	mov	rbx, r12
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L43:
	movss	xmm1, DWORD PTR 4[rbx]
	add	rbx, 4
.L74:
	comiss	xmm0, xmm1
	ja	.L43
	sub	rax, 4
	comiss	xmm2, xmm0
	jbe	.L44
	.p2align 4,,10
	.p2align 3
.L46:
	movss	xmm2, DWORD PTR -4[rax]
	sub	rax, 4
	comiss	xmm2, xmm0
	ja	.L46
.L44:
	cmp	rax, rbx
	jbe	.L75
	movss	DWORD PTR [rbx], xmm2
	add	rbx, 4
	movss	xmm2, DWORD PTR -4[rax]
	movss	DWORD PTR [rax], xmm1
	movss	xmm1, DWORD PTR [rbx]
	movss	xmm0, DWORD PTR 0[rbp]
	jmp	.L74
.L65:
	comiss	xmm3, xmm0
	ja	.L73
	comiss	xmm3, xmm2
	jbe	.L69
.L72:
	movss	DWORD PTR 0[rbp], xmm3
	movaps	xmm2, xmm1
	movss	DWORD PTR -4[rsi], xmm1
	movss	xmm0, DWORD PTR 0[rbp]
	movss	xmm1, DWORD PTR 4[rbp]
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L75:
	mov	rdx, r13
	mov	rdi, rbx
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0
	mov	rax, rbx
	sub	rax, rbp
	cmp	rax, 64
	jle	.L21
	test	r13, r13
	je	.L24
	mov	rsi, rbx
	jmp	.L25
.L69:
	movss	DWORD PTR 0[rbp], xmm2
	movss	DWORD PTR [rax], xmm1
	movss	xmm1, DWORD PTR 4[rbp]
	movss	xmm0, DWORD PTR 0[rbp]
	movss	xmm2, DWORD PTR -4[rsi]
	jmp	.L34
.L24:
	sar	rax, 2
	lea	r13, -2[rax]
	mov	r12, rax
	sar	r13
	jmp	.L27
.L76:
	sub	r13, 1
.L27:
	movss	xmm0, DWORD PTR 0[rbp+r13*4]
	mov	rdx, r12
	mov	rsi, r13
	mov	rdi, rbp
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0
	test	r13, r13
	jne	.L76
	sub	rbx, 4
	.p2align 4,,10
	.p2align 3
.L28:
	mov	r12, rbx
	movss	xmm1, DWORD PTR 0[rbp]
	movss	xmm0, DWORD PTR [rbx]
	xor	esi, esi
	sub	r12, rbp
	mov	rdi, rbp
	sub	rbx, 4
	mov	rdx, r12
	movss	DWORD PTR 4[rbx], xmm1
	sar	rdx, 2
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0
	cmp	r12, 4
	jg	.L28
.L21:
	add	rsp, 8
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	rbp
	.cfi_def_cfa_offset 24
	pop	r12
	.cfi_def_cfa_offset 16
	pop	r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5408:
	.size	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0, .-_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0
	.p2align 4
	.globl	_Z6matmulRKSt6vectorIfSaIfEES3_RS1_i
	.type	_Z6matmulRKSt6vectorIfSaIfEES3_RS1_i, @function
_Z6matmulRKSt6vectorIfSaIfEES3_RS1_i:
.LFB4556:
	.cfi_startproc
	endbr64
	test	ecx, ecx
	jle	.L101
	push	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	mov	rax, rdi
	xor	r15d, r15d
	push	r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	mov	r14d, ecx
	push	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	and	r14d, -4
	push	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	mov	r12d, ecx
	push	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movsx	rbx, ecx
	mov	rax, QWORD PTR [rax]
	mov	rdi, QWORD PTR [rsi]
	mov	r8, QWORD PTR [rdx]
	mov	QWORD PTR -64[rsp], rbx
	sal	rbx, 2
	mov	rdx, r8
	mov	QWORD PTR -24[rsp], rbx
	lea	ebx, -1[rcx]
	mov	QWORD PTR -16[rsp], rax
	lea	rax, 4[rax+rbx*4]
	mov	QWORD PTR -72[rsp], rax
	mov	eax, ecx
	shr	eax, 2
	mov	DWORD PTR -44[rsp], 0
	lea	r10d, -1[rax]
	lea	rax, 4[rdi]
	mov	DWORD PTR -52[rsp], ebx
	mov	QWORD PTR -80[rsp], rax
	mov	eax, ecx
	add	r10, 1
	and	eax, 3
	mov	QWORD PTR -32[rsp], rbx
	sal	r10, 4
	xor	ebx, ebx
	mov	DWORD PTR -48[rsp], eax
	.p2align 4,,10
	.p2align 3
.L79:
	mov	rsi, QWORD PTR -16[rsp]
	lea	rax, 0[0+r15*4]
	xor	r9d, r9d
	lea	r11, [rsi+rax]
	add	rax, r8
	xor	esi, esi
	mov	QWORD PTR -40[rsp], rax
	.p2align 4,,10
	.p2align 3
.L88:
	mov	rcx, QWORD PTR -80[rsp]
	lea	rax, 0[0+r9*4]
	movss	xmm1, DWORD PTR [r11]
	lea	rbp, [rcx+rax]
	mov	rcx, rdx
	sub	rcx, rbp
	cmp	rcx, 8
	jbe	.L80
	cmp	r12d, 1
	je	.L80
	cmp	DWORD PTR -52[rsp], 2
	jbe	.L89
	movaps	xmm2, xmm1
	add	rax, rdi
	xor	ecx, ecx
	shufps	xmm2, xmm2, 0
	.p2align 4,,10
	.p2align 3
.L82:
	movups	xmm0, XMMWORD PTR [rax+rcx]
	movups	xmm3, XMMWORD PTR [rdx+rcx]
	mulps	xmm0, xmm2
	addps	xmm0, xmm3
	movups	XMMWORD PTR [rdx+rcx], xmm0
	add	rcx, 16
	cmp	r10, rcx
	jne	.L82
	cmp	r14d, r12d
	je	.L87
	mov	eax, DWORD PTR -48[rsp]
	mov	r13d, eax
	cmp	eax, 1
	je	.L90
	mov	ecx, r14d
	mov	eax, r14d
.L81:
	lea	rbp, [rcx+r15]
	add	rcx, r9
	movaps	xmm2, xmm1
	movq	xmm0, QWORD PTR [rdi+rcx*4]
	shufps	xmm2, xmm2, 0xe0
	lea	rbp, [r8+rbp*4]
	mov	ecx, r13d
	and	ecx, -2
	mulps	xmm0, xmm2
	movq	xmm2, QWORD PTR 0[rbp]
	add	eax, ecx
	addps	xmm0, xmm2
	movlps	QWORD PTR 0[rbp], xmm0
	cmp	r13d, ecx
	je	.L87
.L84:
	lea	ecx, [rbx+rax]
	add	eax, esi
	movsx	rcx, ecx
	cdqe
	mulss	xmm1, DWORD PTR [rdi+rax*4]
	lea	rcx, [r8+rcx*4]
	addss	xmm1, DWORD PTR [rcx]
	movss	DWORD PTR [rcx], xmm1
.L87:
	add	r11, 4
	add	esi, r12d
	add	r9, QWORD PTR -64[rsp]
	cmp	r11, QWORD PTR -72[rsp]
	jne	.L88
	mov	rcx, QWORD PTR -24[rsp]
	add	DWORD PTR -44[rsp], 1
	add	ebx, r12d
	mov	eax, DWORD PTR -44[rsp]
	add	QWORD PTR -72[rsp], rcx
	add	rdx, rcx
	add	r15, QWORD PTR -64[rsp]
	cmp	r12d, eax
	jne	.L79
	pop	rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	pop	rbp
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L80:
	.cfi_restore_state
	mov	rcx, QWORD PTR -32[rsp]
	mov	rbp, QWORD PTR -80[rsp]
	add	rax, rdi
	add	rcx, r9
	lea	rbp, 0[rbp+rcx*4]
	mov	rcx, QWORD PTR -40[rsp]
	.p2align 4,,10
	.p2align 3
.L86:
	movss	xmm0, DWORD PTR [rax]
	add	rax, 4
	add	rcx, 4
	mulss	xmm0, xmm1
	addss	xmm0, DWORD PTR -4[rcx]
	movss	DWORD PTR -4[rcx], xmm0
	cmp	rax, rbp
	jne	.L86
	jmp	.L87
.L89:
	mov	r13d, r12d
	xor	ecx, ecx
	xor	eax, eax
	jmp	.L81
.L90:
	mov	eax, r14d
	jmp	.L84
.L101:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	ret
	.cfi_endproc
.LFE4556:
	.size	_Z6matmulRKSt6vectorIfSaIfEES3_RS1_i, .-_Z6matmulRKSt6vectorIfSaIfEES3_RS1_i
	.p2align 4
	.globl	_Z5saxpyRSt6vectorIfSaIfEERKS1_f
	.type	_Z5saxpyRSt6vectorIfSaIfEERKS1_f, @function
_Z5saxpyRSt6vectorIfSaIfEERKS1_f:
.LFB4557:
	.cfi_startproc
	endbr64
	mov	rdx, QWORD PTR [rdi]
	mov	rax, QWORD PTR 8[rdi]
	sub	rax, rdx
	mov	rdi, rax
	sar	rdi, 2
	mov	r8, rdi
	je	.L104
	mov	rcx, QWORD PTR [rsi]
	mov	rsi, rdx
	lea	r9, 4[rcx]
	sub	rsi, r9
	cmp	rsi, 8
	jbe	.L113
	cmp	rax, 4
	je	.L113
	lea	rax, -1[rdi]
	cmp	rax, 2
	jbe	.L114
	mov	rsi, rdi
	movaps	xmm2, xmm0
	xor	eax, eax
	shr	rsi, 2
	shufps	xmm2, xmm2, 0
	sal	rsi, 4
	.p2align 4,,10
	.p2align 3
.L108:
	movups	xmm1, XMMWORD PTR [rcx+rax]
	movups	xmm3, XMMWORD PTR [rdx+rax]
	mulps	xmm1, xmm2
	addps	xmm1, xmm3
	movups	XMMWORD PTR [rdx+rax], xmm1
	add	rax, 16
	cmp	rsi, rax
	jne	.L108
	mov	rax, rdi
	and	rax, -4
	test	dil, 3
	je	.L104
	sub	rdi, rax
	mov	r8, rdi
	cmp	rdi, 1
	je	.L110
.L107:
	movq	xmm1, QWORD PTR [rcx+rax*4]
	movaps	xmm2, xmm0
	lea	rsi, [rdx+rax*4]
	shufps	xmm2, xmm2, 0xe0
	mulps	xmm1, xmm2
	movq	xmm2, QWORD PTR [rsi]
	addps	xmm1, xmm2
	movlps	QWORD PTR [rsi], xmm1
	mov	rsi, r8
	and	rsi, -2
	add	rax, rsi
	cmp	r8, rsi
	je	.L104
.L110:
	mulss	xmm0, DWORD PTR [rcx+rax*4]
	lea	rdx, [rdx+rax*4]
	addss	xmm0, DWORD PTR [rdx]
	movss	DWORD PTR [rdx], xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L113:
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L106:
	movss	xmm1, DWORD PTR [rcx+rax*4]
	mulss	xmm1, xmm0
	addss	xmm1, DWORD PTR [rdx+rax*4]
	movss	DWORD PTR [rdx+rax*4], xmm1
	add	rax, 1
	cmp	rdi, rax
	jne	.L106
.L104:
	ret
.L114:
	xor	eax, eax
	jmp	.L107
	.cfi_endproc
.LFE4557:
	.size	_Z5saxpyRSt6vectorIfSaIfEERKS1_f, .-_Z5saxpyRSt6vectorIfSaIfEERKS1_f
	.p2align 4
	.globl	_Z6lengthRKSt6vectorIfSaIfEE
	.type	_Z6lengthRKSt6vectorIfSaIfEE, @function
_Z6lengthRKSt6vectorIfSaIfEE:
.LFB4558:
	.cfi_startproc
	endbr64
	mov	rax, QWORD PTR [rdi]
	mov	rdx, QWORD PTR 8[rdi]
	cmp	rdx, rax
	je	.L135
	pxor	xmm2, xmm2
	movapd	xmm0, xmm2
	.p2align 4,,10
	.p2align 3
.L131:
	movss	xmm1, DWORD PTR [rax]
	add	rax, 4
	mulss	xmm1, xmm1
	cvtss2sd	xmm1, xmm1
	addsd	xmm0, xmm1
	cmp	rdx, rax
	jne	.L131
	ucomisd	xmm2, xmm0
	ja	.L139
	sqrtsd	xmm0, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L135:
	pxor	xmm0, xmm0
	sqrtsd	xmm0, xmm0
	ret
.L139:
	jmp	sqrt@PLT
	.cfi_endproc
.LFE4558:
	.size	_Z6lengthRKSt6vectorIfSaIfEE, .-_Z6lengthRKSt6vectorIfSaIfEE
	.p2align 4
	.globl	_Z11sort_valuesRSt6vectorIfSaIfEE
	.type	_Z11sort_valuesRSt6vectorIfSaIfEE, @function
_Z11sort_valuesRSt6vectorIfSaIfEE:
.LFB4559:
	.cfi_startproc
	endbr64
	push	r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	push	r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	push	rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	sub	rsp, 16
	.cfi_def_cfa_offset 64
	mov	r13, QWORD PTR 8[rdi]
	mov	rbp, QWORD PTR [rdi]
	cmp	rbp, r13
	je	.L140
	mov	r12, r13
	mov	edx, 63
	mov	rsi, r13
	mov	rdi, rbp
	sub	r12, rbp
	lea	rbx, 4[rbp]
	mov	rax, r12
	sar	rax, 2
	bsr	rax, rax
	xor	rax, 63
	sub	edx, eax
	movsx	rdx, edx
	add	rdx, rdx
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0
	cmp	r12, 64
	jle	.L142
	lea	r12, 64[rbp]
	mov	r14d, 4
	jmp	.L150
	.p2align 4,,10
	.p2align 3
.L189:
	cmp	rbp, rbx
	je	.L145
	mov	rdx, rbx
	lea	rdi, 0[rbp+r14]
	mov	rsi, rbp
	movss	DWORD PTR 12[rsp], xmm1
	sub	rdx, rbp
	call	memmove@PLT
	movss	xmm1, DWORD PTR 12[rsp]
.L145:
	add	rbx, 4
	movss	DWORD PTR 0[rbp], xmm1
	cmp	r12, rbx
	je	.L188
.L150:
	movss	xmm1, DWORD PTR [rbx]
	movss	xmm0, DWORD PTR 0[rbp]
	comiss	xmm0, xmm1
	ja	.L189
	movss	xmm0, DWORD PTR -4[rbx]
	lea	rax, -4[rbx]
	comiss	xmm0, xmm1
	jbe	.L183
	.p2align 4,,10
	.p2align 3
.L149:
	movss	DWORD PTR 4[rax], xmm0
	mov	rdx, rax
	movss	xmm0, DWORD PTR -4[rax]
	sub	rax, 4
	comiss	xmm0, xmm1
	ja	.L149
.L147:
	add	rbx, 4
	movss	DWORD PTR [rdx], xmm1
	cmp	r12, rbx
	jne	.L150
.L188:
	cmp	r13, r12
	je	.L140
	.p2align 4,,10
	.p2align 3
.L151:
	movss	xmm1, DWORD PTR [r12]
	movss	xmm0, DWORD PTR -4[r12]
	lea	rax, -4[r12]
	comiss	xmm0, xmm1
	jbe	.L184
	.p2align 4,,10
	.p2align 3
.L155:
	movss	DWORD PTR 4[rax], xmm0
	mov	rdx, rax
	movss	xmm0, DWORD PTR -4[rax]
	sub	rax, 4
	comiss	xmm0, xmm1
	ja	.L155
	add	r12, 4
	movss	DWORD PTR [rdx], xmm1
	cmp	r13, r12
	jne	.L151
.L140:
	add	rsp, 16
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	pop	rbx
	.cfi_def_cfa_offset 40
	pop	rbp
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r13
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L142:
	.cfi_restore_state
	mov	r12d, 4
	cmp	r13, rbx
	jne	.L157
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L190:
	cmp	rbp, rbx
	je	.L160
	mov	rdx, rbx
	lea	rdi, 0[rbp+r12]
	mov	rsi, rbp
	movss	DWORD PTR 12[rsp], xmm1
	sub	rdx, rbp
	call	memmove@PLT
	movss	xmm1, DWORD PTR 12[rsp]
.L160:
	movss	DWORD PTR 0[rbp], xmm1
.L161:
	add	rbx, 4
	cmp	r13, rbx
	je	.L140
.L157:
	movss	xmm1, DWORD PTR [rbx]
	movss	xmm0, DWORD PTR 0[rbp]
	comiss	xmm0, xmm1
	ja	.L190
	movss	xmm0, DWORD PTR -4[rbx]
	lea	rax, -4[rbx]
	comiss	xmm0, xmm1
	jbe	.L186
	.p2align 4,,10
	.p2align 3
.L164:
	movss	DWORD PTR 4[rax], xmm0
	mov	rdx, rax
	movss	xmm0, DWORD PTR -4[rax]
	sub	rax, 4
	comiss	xmm0, xmm1
	ja	.L164
.L162:
	movss	DWORD PTR [rdx], xmm1
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L184:
	mov	rdx, r12
	add	r12, 4
	movss	DWORD PTR [rdx], xmm1
	cmp	r13, r12
	jne	.L151
	jmp	.L140
.L186:
	mov	rdx, rbx
	jmp	.L162
.L183:
	mov	rdx, rbx
	jmp	.L147
	.cfi_endproc
.LFE4559:
	.size	_Z11sort_valuesRSt6vectorIfSaIfEE, .-_Z11sort_valuesRSt6vectorIfSaIfEE
	.section	.rodata._ZNSt6vectorIfSaIfEEC2EmRKS0_.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIfSaIfEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIfSaIfEEC5EmRKS0_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIfSaIfEEC2EmRKS0_
	.type	_ZNSt6vectorIfSaIfEEC2EmRKS0_, @function
_ZNSt6vectorIfSaIfEEC2EmRKS0_:
.LFB4912:
	.cfi_startproc
	endbr64
	push	r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	mov	rax, rsi
	push	r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	push	rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	sub	rsp, 8
	.cfi_def_cfa_offset 48
	shr	rax, 61
	jne	.L198
	pxor	xmm0, xmm0
	mov	QWORD PTR 16[rdi], 0
	mov	rbx, rdi
	mov	rbp, rsi
	movups	XMMWORD PTR [rdi], xmm0
	lea	r13, 0[0+rsi*4]
	test	rsi, rsi
	je	.L193
	mov	rdi, r13
	call	_Znwm@PLT
	movq	xmm0, rax
	lea	r12, [rax+r13]
	mov	DWORD PTR [rax], 0x00000000
	lea	rdi, 4[rax]
	punpcklqdq	xmm0, xmm0
	mov	QWORD PTR 16[rbx], r12
	movups	XMMWORD PTR [rbx], xmm0
	cmp	rbp, 1
	je	.L195
	cmp	r12, rdi
	je	.L194
	lea	rdx, -4[r13]
	xor	esi, esi
	call	memset@PLT
.L194:
	mov	QWORD PTR 8[rbx], r12
	add	rsp, 8
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	rbp
	.cfi_def_cfa_offset 24
	pop	r12
	.cfi_def_cfa_offset 16
	pop	r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L193:
	.cfi_restore_state
	xor	r12d, r12d
	mov	QWORD PTR [rdi], 0
	mov	QWORD PTR 16[rdi], 0
	mov	QWORD PTR 8[rbx], r12
	add	rsp, 8
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	rbp
	.cfi_def_cfa_offset 24
	pop	r12
	.cfi_def_cfa_offset 16
	pop	r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L195:
	.cfi_restore_state
	mov	r12, rdi
	mov	QWORD PTR 8[rbx], r12
	add	rsp, 8
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	rbp
	.cfi_def_cfa_offset 24
	pop	r12
	.cfi_def_cfa_offset 16
	pop	r13
	.cfi_def_cfa_offset 8
	ret
.L198:
	.cfi_restore_state
	lea	rdi, .LC1[rip]
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE4912:
	.size	_ZNSt6vectorIfSaIfEEC2EmRKS0_, .-_ZNSt6vectorIfSaIfEEC2EmRKS0_
	.weak	_ZNSt6vectorIfSaIfEEC1EmRKS0_
	.set	_ZNSt6vectorIfSaIfEEC1EmRKS0_,_ZNSt6vectorIfSaIfEEC2EmRKS0_
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB5366:
	.cfi_startproc
	endbr64
	mov	r8, rdi
	mov	rdi, QWORD PTR [rdi]
	mov	r10d, 2567483615
	mov	rax, r8
	lea	r9, 1816[r8]
	mov	rdx, r8
	.p2align 4,,10
	.p2align 3
.L201:
	and	rdi, -2147483648
	mov	rcx, rdi
	mov	rdi, QWORD PTR 8[rdx]
	mov	rsi, rdi
	and	esi, 2147483647
	or	rsi, rcx
	mov	rcx, rsi
	shr	rcx
	xor	rcx, QWORD PTR 3176[rdx]
	and	esi, 1
	je	.L200
	xor	rcx, r10
.L200:
	mov	QWORD PTR [rdx], rcx
	add	rdx, 8
	cmp	rdx, r9
	jne	.L201
	mov	rsi, QWORD PTR 1816[r8]
	lea	rdi, 3168[r8]
	mov	r9d, 2567483615
	.p2align 4,,10
	.p2align 3
.L203:
	and	rsi, -2147483648
	mov	rdx, rsi
	mov	rsi, QWORD PTR 1824[rax]
	mov	rcx, rsi
	and	ecx, 2147483647
	or	rcx, rdx
	mov	rdx, rcx
	shr	rdx
	xor	rdx, QWORD PTR [rax]
	and	ecx, 1
	je	.L202
	xor	rdx, r9
.L202:
	mov	QWORD PTR 1816[rax], rdx
	add	rax, 8
	cmp	rax, rdi
	jne	.L203
	mov	rax, QWORD PTR 4984[r8]
	mov	rdx, QWORD PTR [r8]
	and	rax, -2147483648
	and	edx, 2147483647
	or	rax, rdx
	mov	rdx, rax
	shr	rdx
	xor	rdx, QWORD PTR 3168[r8]
	test	al, 1
	je	.L204
	mov	eax, 2567483615
	xor	rdx, rax
.L204:
	mov	QWORD PTR 4984[r8], rdx
	mov	QWORD PTR 4992[r8], 0
	ret
	.cfi_endproc
.LFE5366:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.text
	.p2align 4
	.globl	_Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE
	.type	_Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE, @function
_Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE:
.LFB4555:
	.cfi_startproc
	endbr64
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	mov	rbx, QWORD PTR [rdi]
	mov	r12, QWORD PTR 8[rdi]
	cmp	r12, rbx
	je	.L216
	mov	rax, QWORD PTR 4992[rsi]
	movss	xmm3, DWORD PTR .LC3[rip]
	mov	rbp, rsi
	pxor	xmm1, xmm1
	movss	xmm2, DWORD PTR .LC4[rip]
	jmp	.L225
	.p2align 4,,10
	.p2align 3
.L228:
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm1
	mulss	xmm0, xmm3
	comiss	xmm0, xmm2
	jnb	.L220
.L229:
	addss	xmm0, xmm1
	add	rbx, 4
	movss	DWORD PTR -4[rbx], xmm0
	cmp	r12, rbx
	je	.L216
.L221:
	mov	rax, rdx
.L225:
	cmp	rax, 623
	ja	.L227
.L224:
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR 0[rbp+rax*8]
	mov	QWORD PTR 4992[rbp], rdx
	mov	rcx, rax
	shr	rcx, 11
	mov	ecx, ecx
	xor	rax, rcx
	mov	rcx, rax
	sal	rcx, 7
	and	ecx, 2636928640
	xor	rax, rcx
	mov	rcx, rax
	sal	rcx, 15
	and	ecx, 4022730752
	xor	rax, rcx
	mov	rcx, rax
	shr	rcx, 18
	xor	rax, rcx
	jns	.L228
	mov	rcx, rax
	and	eax, 1
	pxor	xmm0, xmm0
	shr	rcx
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
	addss	xmm0, xmm1
	mulss	xmm0, xmm3
	comiss	xmm0, xmm2
	jb	.L229
.L220:
	mov	DWORD PTR [rbx], 0x3f7fffff
	add	rbx, 4
	cmp	r12, rbx
	jne	.L221
.L216:
	pop	rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	pop	rbp
	.cfi_def_cfa_offset 16
	pop	r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L227:
	.cfi_restore_state
	mov	rdi, rbp
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	mov	rax, QWORD PTR 4992[rbp]
	pxor	xmm1, xmm1
	movss	xmm2, DWORD PTR .LC4[rip]
	movss	xmm3, DWORD PTR .LC3[rip]
	jmp	.L224
	.cfi_endproc
.LFE4555:
	.size	_Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE, .-_Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"n="
.LC8:
	.string	" len="
.LC9:
	.string	" median="
.LC10:
	.string	"\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB11:
	.section	.text.startup,"ax",@progbits
.LHOTB11:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB4560:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4560
	endbr64
	push	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 4096
	.cfi_def_cfa_offset 4152
	or	QWORD PTR [rsp], 0
	sub	rsp, 1096
	.cfi_def_cfa_offset 5248
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 5176[rsp], rax
	xor	eax, eax
	cmp	edi, 1
	jg	.L285
	mov	DWORD PTR 12[rsp], 1024
	mov	r12d, 200
	mov	QWORD PTR 24[rsp], 5000000
.L231:
	mov	ecx, 42
	mov	edx, 1
	mov	QWORD PTR 176[rsp], 42
	lea	rbp, 176[rsp]
	.p2align 4,,10
	.p2align 3
.L232:
	mov	rax, rcx
	shr	rax, 30
	xor	rax, rcx
	imul	rax, rax, 1812433253
	lea	ecx, [rax+rdx]
	mov	QWORD PTR 0[rbp+rdx*8], rcx
	add	rdx, 1
	cmp	rdx, 624
	jne	.L232
	mov	ebx, DWORD PTR 12[rsp]
	lea	r13, 144[rsp]
	lea	r15, 80[rsp]
	mov	QWORD PTR 5168[rsp], 624
	mov	rdx, r13
	mov	eax, ebx
	imul	eax, ebx
	lea	rbx, 48[rsp]
	mov	rdi, rbx
	movsx	r14, eax
	mov	DWORD PTR 16[rsp], eax
	mov	rsi, r14
.LEHB0:
	call	_ZNSt6vectorIfSaIfEEC1EmRKS0_
.LEHE0:
	mov	rdx, r13
	mov	rsi, r14
	mov	rdi, r15
.LEHB1:
	call	_ZNSt6vectorIfSaIfEEC1EmRKS0_
.LEHE1:
	mov	eax, DWORD PTR 16[rsp]
	pxor	xmm0, xmm0
	mov	QWORD PTR 128[rsp], 0
	movaps	XMMWORD PTR 112[rsp], xmm0
	test	eax, eax
	je	.L233
	sal	r14, 2
	mov	rdi, r14
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	xmm0, rax
	lea	rcx, [rax+r14]
	mov	rdi, rax
	mov	rdx, r14
	punpcklqdq	xmm0, xmm0
	xor	esi, esi
	mov	QWORD PTR 16[rsp], rcx
	mov	QWORD PTR 128[rsp], rcx
	movaps	XMMWORD PTR 112[rsp], xmm0
	call	memset@PLT
	mov	rcx, QWORD PTR 16[rsp]
.L248:
	mov	rsi, rbp
	mov	rdi, rbx
	mov	QWORD PTR 120[rsp], rcx
	lea	r14, 112[rsp]
	call	_Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE
	mov	rsi, rbp
	mov	rdi, r15
	call	_Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE
	mov	ecx, DWORD PTR 12[rsp]
	mov	rdx, r14
	mov	rsi, r15
	mov	rdi, rbx
	call	_Z6matmulRKSt6vectorIfSaIfEES3_RS1_i
	test	r12d, r12d
	jle	.L234
	movss	xmm4, DWORD PTR .LC6[rip]
	xor	r10d, r10d
	.p2align 4,,10
	.p2align 3
.L235:
	movaps	xmm0, xmm4
	mov	rsi, rbx
	mov	rdi, r14
	add	r10d, 1
	call	_Z5saxpyRSt6vectorIfSaIfEERKS1_f
	cmp	r10d, r12d
	jne	.L235
.L234:
	mov	rdi, r14
	call	_Z6lengthRKSt6vectorIfSaIfEE
	mov	r15, QWORD PTR 24[rsp]
	lea	rdx, 47[rsp]
	mov	rdi, r13
	movq	rbx, xmm0
	mov	rsi, r15
.LEHB3:
	call	_ZNSt6vectorIfSaIfEEC1EmRKS0_
.LEHE3:
	mov	rsi, rbp
	mov	rdi, r13
	lea	rbp, _ZSt4cout[rip]
	call	_Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE
	mov	rdi, r13
	call	_Z11sort_valuesRSt6vectorIfSaIfEE
	mov	edx, 2
	lea	rsi, .LC7[rip]
	mov	rdi, rbp
.LEHB4:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	mov	esi, DWORD PTR 12[rsp]
	mov	rdi, rbp
	call	_ZNSolsEi@PLT
	mov	edx, 5
	lea	rsi, .LC8[rip]
	mov	rdi, rax
	mov	rbp, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	xmm0, rbx
	mov	rdi, rbp
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	mov	edx, 8
	lea	rsi, .LC9[rip]
	mov	rdi, rax
	mov	rbp, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	mov	r12, QWORD PTR 144[rsp]
	mov	rax, r15
	pxor	xmm0, xmm0
	mov	rdi, rbp
	shr	rax
	cvtss2sd	xmm0, DWORD PTR [r12+rax*4]
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	mov	rdi, rax
	mov	edx, 1
	lea	rsi, .LC10[rip]
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE4:
	test	r12, r12
	je	.L236
	mov	rsi, QWORD PTR 160[rsp]
	mov	rdi, r12
	sub	rsi, r12
	call	_ZdlPvm@PLT
.L236:
	mov	rdi, QWORD PTR 112[rsp]
	test	rdi, rdi
	je	.L237
	mov	rsi, QWORD PTR 128[rsp]
	sub	rsi, rdi
	call	_ZdlPvm@PLT
.L237:
	mov	rdi, QWORD PTR 80[rsp]
	test	rdi, rdi
	je	.L238
	mov	rsi, QWORD PTR 96[rsp]
	sub	rsi, rdi
	call	_ZdlPvm@PLT
.L238:
	mov	rdi, QWORD PTR 48[rsp]
	test	rdi, rdi
	je	.L239
	mov	rsi, QWORD PTR 64[rsp]
	sub	rsi, rdi
	call	_ZdlPvm@PLT
.L239:
	mov	rax, QWORD PTR 5176[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L286
	add	rsp, 5192
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xor	eax, eax
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	rbp
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.L285:
	.cfi_restore_state
	mov	ebx, edi
	mov	rdi, QWORD PTR 8[rsi]
	mov	rbp, rsi
	mov	edx, 10
	xor	esi, esi
	call	strtol@PLT
	mov	DWORD PTR 12[rsp], eax
	cmp	ebx, 2
	je	.L251
	mov	rdi, QWORD PTR 16[rbp]
	mov	edx, 10
	xor	esi, esi
	call	strtol@PLT
	mov	r12d, eax
	cmp	ebx, 3
	je	.L252
	mov	rdi, QWORD PTR 24[rbp]
	mov	edx, 10
	xor	esi, esi
	call	strtol@PLT
	mov	QWORD PTR 24[rsp], rax
	jmp	.L231
.L233:
	mov	QWORD PTR 112[rsp], 0
	xor	ecx, ecx
	mov	QWORD PTR 128[rsp], 0
	jmp	.L248
.L251:
	mov	QWORD PTR 24[rsp], 5000000
	mov	r12d, 200
	jmp	.L231
.L286:
	call	__stack_chk_fail@PLT
.L252:
	mov	QWORD PTR 24[rsp], 5000000
	jmp	.L231
.L253:
	endbr64
	mov	rbp, rax
	jmp	.L246
.L254:
	endbr64
	mov	rbp, rax
	jmp	.L244
.L256:
	endbr64
	mov	rbp, rax
	jmp	.L240
.L255:
	endbr64
	mov	rbp, rax
	jmp	.L242
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA4560:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4560-.LLSDACSB4560
.LLSDACSB4560:
	.uleb128 .LEHB0-.LFB4560
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB4560
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L253-.LFB4560
	.uleb128 0
	.uleb128 .LEHB2-.LFB4560
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L254-.LFB4560
	.uleb128 0
	.uleb128 .LEHB3-.LFB4560
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L255-.LFB4560
	.uleb128 0
	.uleb128 .LEHB4-.LFB4560
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L256-.LFB4560
	.uleb128 0
.LLSDACSE4560:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC4560
	.type	main.cold, @function
main.cold:
.LFSB4560:
.L240:
	.cfi_def_cfa_offset 5248
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rdi, QWORD PTR 144[rsp]
	mov	rsi, QWORD PTR 160[rsp]
	sub	rsi, rdi
	test	rdi, rdi
	je	.L242
	call	_ZdlPvm@PLT
.L242:
	mov	rdi, QWORD PTR 112[rsp]
	mov	rsi, QWORD PTR 128[rsp]
	sub	rsi, rdi
	test	rdi, rdi
	je	.L244
	call	_ZdlPvm@PLT
.L244:
	mov	rdi, QWORD PTR 80[rsp]
	mov	rsi, QWORD PTR 96[rsp]
	sub	rsi, rdi
	test	rdi, rdi
	je	.L246
	call	_ZdlPvm@PLT
.L246:
	mov	rdi, QWORD PTR 48[rsp]
	mov	rsi, QWORD PTR 64[rsp]
	sub	rsi, rdi
	test	rdi, rdi
	je	.L247
	call	_ZdlPvm@PLT
.L247:
	mov	rdi, rbp
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
	.cfi_endproc
.LFE4560:
	.section	.gcc_except_table
.LLSDAC4560:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC4560-.LLSDACSBC4560
.LLSDACSBC4560:
	.uleb128 .LEHB5-.LCOLDB11
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC4560:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE11:
	.section	.text.startup
.LHOTE11:
	.p2align 4
	.type	_GLOBAL__sub_I__Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE, @function
_GLOBAL__sub_I__Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE:
.LFB5404:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	lea	rbp, _ZStL8__ioinit[rip]
	mov	rdi, rbp
	call	_ZNSt8ios_base4InitC1Ev@PLT
	mov	rdi, QWORD PTR _ZNSt8ios_base4InitD1Ev@GOTPCREL[rip]
	mov	rsi, rbp
	pop	rbp
	.cfi_def_cfa_offset 8
	lea	rdx, __dso_handle[rip]
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE5404:
	.size	_GLOBAL__sub_I__Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE, .-_GLOBAL__sub_I__Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC3:
	.long	796917760
	.align 4
.LC4:
	.long	1065353216
	.align 4
.LC6:
	.long	1056964608
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.3) 11.4.0"
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
