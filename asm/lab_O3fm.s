	.file	"lab.cpp"
	.intel_syntax noprefix
	.text
	.p2align 4
	.type	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0, @function
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0:
.LFB5942:
	.cfi_startproc
	lea	rax, -1[rdx]
	mov	r10, rax
	shr	r10, 63
	add	r10, rax
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sar	r10
	mov	rbx, rdx
	mov	rcx, rdi
	mov	r11, rdx
	mov	rdi, rsi
	and	ebx, 1
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
	lea	r8, -1[rax]
	lea	r9, [rcx+r8*4]
	lea	rdx, [rcx+rdx*8]
	vmovss	xmm1, DWORD PTR [rdx]
	vmovss	xmm2, DWORD PTR [r9]
	vcomiss	xmm2, xmm1
	jbe	.L3
	vmovaps	xmm1, xmm2
	mov	rdx, r9
	mov	rax, r8
.L3:
	vmovss	DWORD PTR [rcx+rsi*4], xmm1
	cmp	r10, rax
	jg	.L11
	test	rbx, rbx
	je	.L10
.L6:
	lea	r8, -1[rax]
	mov	rsi, r8
	shr	rsi, 63
	add	rsi, r8
	sar	rsi
	cmp	rax, rdi
	jg	.L9
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L21:
	vmovss	DWORD PTR [rdx], xmm1
	lea	rdx, -1[rsi]
	mov	rax, rdx
	shr	rax, 63
	add	rax, rdx
	sar	rax
	mov	rdx, rax
	mov	rax, rsi
	cmp	rdi, rsi
	jge	.L20
	mov	rsi, rdx
.L9:
	lea	r8, [rcx+rsi*4]
	vmovss	xmm1, DWORD PTR [r8]
	lea	rdx, [rcx+rax*4]
	vcomiss	xmm0, xmm1
	ja	.L21
.L7:
	vmovss	DWORD PTR [rdx], xmm0
	pop	rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	lea	rdx, [rcx+rsi*4]
	test	rbx, rbx
	jne	.L7
	mov	rax, rdi
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
	vmovss	xmm1, DWORD PTR [rsi]
	vmovss	DWORD PTR [rdx], xmm1
	mov	rdx, rsi
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L20:
	mov	rdx, r8
	vmovss	DWORD PTR [rdx], xmm0
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5942:
	.size	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0, .-_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0
	.p2align 4
	.type	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0, @function
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0:
.LFB5943:
	.cfi_startproc
	push	r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	mov	rax, rsi
	sub	rax, rdi
	push	r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
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
	jle	.L72
	mov	rbp, rdi
	mov	r13, rdx
	lea	r12, 4[rdi]
	test	rdx, rdx
	je	.L25
.L26:
	mov	rax, rsi
	sub	rax, rbp
	mov	rdx, rax
	vmovq	xmm0, QWORD PTR 0[rbp]
	sar	rdx, 2
	shr	rax, 63
	add	rax, rdx
	sar	rax
	vshufps	xmm4, xmm0, xmm0, 0xe1
	vmovaps	xmm1, xmm0
	vmovshdup	xmm0, xmm0
	lea	rax, 0[rbp+rax*4]
	vmovss	xmm2, DWORD PTR [rax]
	dec	r13
	vcomiss	xmm2, xmm0
	vmovss	xmm3, DWORD PTR -4[rsi]
	jbe	.L66
	vcomiss	xmm3, xmm2
	ja	.L70
	vcomiss	xmm3, xmm0
	ja	.L74
.L75:
	vmovlps	QWORD PTR 0[rbp], xmm4
	vmovss	xmm2, DWORD PTR -4[rsi]
.L35:
	mov	rax, rsi
	mov	rbx, r12
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L44:
	vmovss	xmm1, DWORD PTR 4[rbx]
	add	rbx, 4
.L76:
	vcomiss	xmm0, xmm1
	ja	.L44
	sub	rax, 4
	vcomiss	xmm2, xmm0
	jbe	.L45
	.p2align 4,,10
	.p2align 3
.L47:
	vmovss	xmm2, DWORD PTR -4[rax]
	sub	rax, 4
	vcomiss	xmm2, xmm0
	ja	.L47
.L45:
	cmp	rax, rbx
	jbe	.L77
	vmovss	DWORD PTR [rbx], xmm2
	vmovss	DWORD PTR [rax], xmm1
	vmovss	xmm1, DWORD PTR 4[rbx]
	vmovss	xmm2, DWORD PTR -4[rax]
	vmovss	xmm0, DWORD PTR 0[rbp]
	add	rbx, 4
	jmp	.L76
.L66:
	vcomiss	xmm3, xmm0
	ja	.L75
	vcomiss	xmm3, xmm2
	jbe	.L70
.L74:
	vmovss	DWORD PTR 0[rbp], xmm3
	vmovss	DWORD PTR -4[rsi], xmm1
	vmovaps	xmm2, xmm1
	vmovss	xmm0, DWORD PTR 0[rbp]
	vmovss	xmm1, DWORD PTR 4[rbp]
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L77:
	mov	rdx, r13
	mov	rdi, rbx
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0
	mov	rax, rbx
	sub	rax, rbp
	cmp	rax, 64
	jle	.L72
	test	r13, r13
	je	.L25
	mov	rsi, rbx
	jmp	.L26
.L70:
	vmovss	DWORD PTR 0[rbp], xmm2
	vmovss	DWORD PTR [rax], xmm1
	vmovss	xmm1, DWORD PTR 4[rbp]
	vmovss	xmm0, DWORD PTR 0[rbp]
	vmovss	xmm2, DWORD PTR -4[rsi]
	jmp	.L35
.L25:
	sar	rax, 2
	lea	r13, -2[rax]
	mov	r12, rax
	sar	r13
	jmp	.L28
.L78:
	dec	r13
.L28:
	vmovss	xmm0, DWORD PTR 0[rbp+r13*4]
	mov	rdx, r12
	mov	rsi, r13
	mov	rdi, rbp
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0
	test	r13, r13
	jne	.L78
	sub	rbx, 4
	.p2align 4,,10
	.p2align 3
.L29:
	mov	r12, rbx
	vmovss	xmm1, DWORD PTR 0[rbp]
	sub	r12, rbp
	vmovss	xmm0, DWORD PTR [rbx]
	mov	rdx, r12
	vmovss	DWORD PTR [rbx], xmm1
	sar	rdx, 2
	xor	esi, esi
	mov	rdi, rbp
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0
	sub	rbx, 4
	cmp	r12, 4
	jg	.L29
.L72:
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
.LFE5943:
	.size	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0, .-_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0
	.p2align 4
	.globl	_Z6matmulRKSt6vectorIfSaIfEES3_RS1_i
	.type	_Z6matmulRKSt6vectorIfSaIfEES3_RS1_i, @function
_Z6matmulRKSt6vectorIfSaIfEES3_RS1_i:
.LFB5091:
	.cfi_startproc
	endbr64
	test	ecx, ecx
	jle	.L105
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rax, rdi
	movsx	rdi, ecx
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r15
	.cfi_offset 15, -24
	xor	r15d, r15d
	push	r14
	.cfi_offset 14, -32
	xor	r14d, r14d
	push	r13
	push	r12
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	mov	r12d, ecx
	push	rbx
	and	rsp, -32
	.cfi_offset 3, -56
	mov	QWORD PTR -24[rsp], rdi
	sal	rdi, 2
	mov	QWORD PTR -72[rsp], rdi
	lea	edi, -1[rcx]
	mov	r10, QWORD PTR [rsi]
	mov	rax, QWORD PTR [rax]
	lea	rsi, 4[r10]
	mov	QWORD PTR -80[rsp], rax
	mov	QWORD PTR -8[rsp], rsi
	lea	rax, 4[rax+rdi*4]
	mov	esi, ecx
	and	esi, 7
	mov	QWORD PTR -16[rsp], rax
	mov	eax, ecx
	shr	eax, 3
	mov	DWORD PTR -36[rsp], esi
	dec	esi
	mov	DWORD PTR -28[rsp], edi
	mov	QWORD PTR -64[rsp], rdi
	mov	r13, QWORD PTR [rdx]
	lea	edi, -1[rax]
	mov	DWORD PTR -44[rsp], 0
	mov	eax, ecx
	mov	DWORD PTR -40[rsp], esi
	and	eax, -8
	inc	rdi
	mov	DWORD PTR -32[rsp], eax
	sal	rdi, 5
	mov	rax, r13
	.p2align 4,,10
	.p2align 3
.L81:
	mov	rsi, QWORD PTR -80[rsp]
	lea	rdx, 0[0+r15*4]
	lea	r8, [rsi+rdx]
	lea	rsi, 0[r13+rdx]
	mov	QWORD PTR -56[rsp], rsi
	xor	r11d, r11d
	xor	esi, esi
	.p2align 4,,10
	.p2align 3
.L90:
	mov	rbx, QWORD PTR -8[rsp]
	lea	rdx, 0[0+rsi*4]
	lea	r9, [rbx+rdx]
	mov	rcx, rax
	sub	rcx, r9
	vmovss	xmm1, DWORD PTR [r8]
	cmp	rcx, 24
	jbe	.L82
	mov	ebx, DWORD PTR -28[rsp]
	cmp	ebx, 2
	jbe	.L82
	cmp	ebx, 6
	jbe	.L91
	add	rdx, r10
	vbroadcastss	ymm2, xmm1
	xor	ecx, ecx
	.p2align 4,,10
	.p2align 3
.L84:
	vmovups	ymm0, YMMWORD PTR [rdx+rcx]
	vfmadd213ps	ymm0, ymm2, YMMWORD PTR [rax+rcx]
	vmovups	YMMWORD PTR [rax+rcx], ymm0
	add	rcx, 32
	cmp	rcx, rdi
	jne	.L84
	mov	edx, DWORD PTR -32[rsp]
	cmp	edx, r12d
	je	.L89
	cmp	DWORD PTR -40[rsp], 2
	mov	ebx, DWORD PTR -36[rsp]
	mov	ecx, edx
	jbe	.L86
.L83:
	lea	r9, [rcx+r15]
	lea	r9, 0[r13+r9*4]
	vmovups	xmm3, XMMWORD PTR [r9]
	add	rcx, rsi
	vshufps	xmm0, xmm1, xmm1, 0
	vfmadd132ps	xmm0, xmm3, XMMWORD PTR [r10+rcx*4]
	mov	ecx, ebx
	and	ecx, -4
	add	edx, ecx
	vmovups	XMMWORD PTR [r9], xmm0
	cmp	ebx, ecx
	je	.L89
.L86:
	lea	ecx, [r14+rdx]
	movsx	rcx, ecx
	lea	r9, 0[r13+rcx*4]
	lea	ecx, [r11+rdx]
	movsx	rcx, ecx
	vmovss	xmm0, DWORD PTR [r10+rcx*4]
	lea	ecx, 1[rdx]
	vfmadd213ss	xmm0, xmm1, DWORD PTR [r9]
	vmovss	DWORD PTR [r9], xmm0
	cmp	r12d, ecx
	jle	.L89
	lea	r9d, [r14+rcx]
	add	ecx, r11d
	movsx	rcx, ecx
	vmovss	xmm0, DWORD PTR [r10+rcx*4]
	movsx	r9, r9d
	lea	r9, 0[r13+r9*4]
	vfmadd213ss	xmm0, xmm1, DWORD PTR [r9]
	add	edx, 2
	vmovss	DWORD PTR [r9], xmm0
	cmp	r12d, edx
	jle	.L89
	lea	ecx, [r14+rdx]
	movsx	rcx, ecx
	lea	rcx, 0[r13+rcx*4]
	vmovss	xmm4, DWORD PTR [rcx]
	add	edx, r11d
	movsx	rdx, edx
	vfmadd132ss	xmm1, xmm4, DWORD PTR [r10+rdx*4]
	vmovss	DWORD PTR [rcx], xmm1
.L89:
	add	r8, 4
	add	r11d, r12d
	add	rsi, QWORD PTR -24[rsp]
	cmp	r8, QWORD PTR -16[rsp]
	jne	.L90
	inc	DWORD PTR -44[rsp]
	mov	rdx, QWORD PTR -72[rsp]
	add	r14d, r12d
	add	QWORD PTR -16[rsp], rdx
	mov	esi, DWORD PTR -44[rsp]
	add	rax, rdx
	add	r15, QWORD PTR -24[rsp]
	cmp	r12d, esi
	jne	.L81
	vzeroupper
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L82:
	.cfi_restore_state
	mov	rbx, QWORD PTR -64[rsp]
	add	rdx, r10
	lea	rcx, [rsi+rbx]
	mov	rbx, QWORD PTR -8[rsp]
	lea	r9, [rbx+rcx*4]
	mov	rcx, QWORD PTR -56[rsp]
	.p2align 4,,10
	.p2align 3
.L88:
	vmovss	xmm0, DWORD PTR [rdx]
	add	rdx, 4
	vfmadd213ss	xmm0, xmm1, DWORD PTR [rcx]
	add	rcx, 4
	vmovss	DWORD PTR -4[rcx], xmm0
	cmp	rdx, r9
	jne	.L88
	jmp	.L89
.L91:
	mov	ebx, r12d
	xor	ecx, ecx
	xor	edx, edx
	jmp	.L83
.L105:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	ret
	.cfi_endproc
.LFE5091:
	.size	_Z6matmulRKSt6vectorIfSaIfEES3_RS1_i, .-_Z6matmulRKSt6vectorIfSaIfEES3_RS1_i
	.p2align 4
	.globl	_Z5saxpyRSt6vectorIfSaIfEERKS1_f
	.type	_Z5saxpyRSt6vectorIfSaIfEERKS1_f, @function
_Z5saxpyRSt6vectorIfSaIfEERKS1_f:
.LFB5092:
	.cfi_startproc
	endbr64
	mov	rdx, QWORD PTR [rdi]
	mov	rcx, QWORD PTR 8[rdi]
	sub	rcx, rdx
	sar	rcx, 2
	je	.L132
	mov	rsi, QWORD PTR [rsi]
	mov	rdi, rdx
	lea	r8, 4[rsi]
	sub	rdi, r8
	lea	rax, -1[rcx]
	cmp	rdi, 24
	jbe	.L117
	cmp	rax, 2
	jbe	.L117
	cmp	rax, 6
	jbe	.L118
	mov	rdi, rcx
	shr	rdi, 3
	vbroadcastss	ymm2, xmm0
	sal	rdi, 5
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L112:
	vmovups	ymm1, YMMWORD PTR [rsi+rax]
	vfmadd213ps	ymm1, ymm2, YMMWORD PTR [rdx+rax]
	vmovups	YMMWORD PTR [rdx+rax], ymm1
	add	rax, 32
	cmp	rax, rdi
	jne	.L112
	mov	rax, rcx
	and	rax, -8
	test	cl, 7
	je	.L130
	mov	rdi, rcx
	sub	rdi, rax
	lea	r8, -1[rdi]
	cmp	r8, 2
	jbe	.L133
	vzeroupper
.L111:
	lea	r8, [rdx+rax*4]
	vmovups	xmm3, XMMWORD PTR [r8]
	vshufps	xmm1, xmm0, xmm0, 0
	vfmadd132ps	xmm1, xmm3, XMMWORD PTR [rsi+rax*4]
	vmovups	XMMWORD PTR [r8], xmm1
	mov	r8, rdi
	and	r8, -4
	add	rax, r8
	cmp	rdi, r8
	je	.L132
.L114:
	vmovss	xmm1, DWORD PTR [rsi+rax*4]
	lea	rdi, 0[0+rax*4]
	lea	r8, [rdx+rdi]
	vfmadd213ss	xmm1, xmm0, DWORD PTR [r8]
	vmovss	DWORD PTR [r8], xmm1
	lea	r8, 1[rax]
	cmp	rcx, r8
	jbe	.L132
	vmovss	xmm1, DWORD PTR 4[rsi+rdi]
	lea	r8, 4[rdx+rdi]
	vfmadd213ss	xmm1, xmm0, DWORD PTR [r8]
	add	rax, 2
	vmovss	DWORD PTR [r8], xmm1
	cmp	rcx, rax
	jbe	.L132
	lea	rax, 8[rdx+rdi]
	vmovss	xmm4, DWORD PTR [rax]
	vfmadd132ss	xmm0, xmm4, DWORD PTR 8[rsi+rdi]
	vmovss	DWORD PTR [rax], xmm0
	ret
.L130:
	vzeroupper
.L132:
	ret
.L133:
	vzeroupper
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L117:
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L110:
	vmovss	xmm1, DWORD PTR [rsi+rax*4]
	vfmadd213ss	xmm1, xmm0, DWORD PTR [rdx+rax*4]
	vmovss	DWORD PTR [rdx+rax*4], xmm1
	inc	rax
	cmp	rcx, rax
	jne	.L110
	ret
.L118:
	mov	rdi, rcx
	xor	eax, eax
	jmp	.L111
	.cfi_endproc
.LFE5092:
	.size	_Z5saxpyRSt6vectorIfSaIfEERKS1_f, .-_Z5saxpyRSt6vectorIfSaIfEERKS1_f
	.p2align 4
	.globl	_Z6lengthRKSt6vectorIfSaIfEE
	.type	_Z6lengthRKSt6vectorIfSaIfEE, @function
_Z6lengthRKSt6vectorIfSaIfEE:
.LFB5093:
	.cfi_startproc
	endbr64
	mov	rcx, QWORD PTR [rdi]
	mov	rdi, QWORD PTR 8[rdi]
	cmp	rdi, rcx
	je	.L141
	lea	rdx, -4[rdi]
	sub	rdx, rcx
	mov	rsi, rdx
	shr	rsi, 2
	mov	rax, rcx
	lea	r8, 1[rsi]
	cmp	rdx, 24
	jbe	.L142
	mov	rdx, r8
	shr	rdx, 3
	sal	rdx, 5
	add	rdx, rcx
	vxorpd	xmm2, xmm2, xmm2
	.p2align 4,,10
	.p2align 3
.L137:
	vmovups	ymm0, YMMWORD PTR [rax]
	add	rax, 32
	vmulps	ymm0, ymm0, ymm0
	vcvtps2pd	ymm1, xmm0
	vextractf128	xmm0, ymm0, 0x1
	vcvtps2pd	ymm0, xmm0
	vaddpd	ymm0, ymm1, ymm0
	vaddpd	ymm2, ymm2, ymm0
	cmp	rax, rdx
	jne	.L137
	vextractf128	xmm1, ymm2, 0x1
	vaddpd	xmm1, xmm1, xmm2
	mov	rdx, r8
	and	rdx, -8
	vunpckhpd	xmm0, xmm1, xmm1
	vaddpd	xmm0, xmm0, xmm1
	lea	rax, [rcx+rdx*4]
	cmp	r8, rdx
	je	.L145
	vzeroupper
.L136:
	sub	rsi, rdx
	lea	r8, 1[rsi]
	cmp	rsi, 2
	jbe	.L139
	vmovups	xmm3, XMMWORD PTR [rcx+rdx*4]
	vxorps	xmm1, xmm1, xmm1
	vmulps	xmm3, xmm3, xmm3
	mov	rdx, r8
	and	rdx, -4
	lea	rax, [rax+rdx*4]
	vmovhlps	xmm1, xmm1, xmm3
	vcvtps2pd	xmm1, xmm1
	vcvtps2pd	xmm2, xmm3
	vaddpd	xmm2, xmm2, xmm1
	vunpckhpd	xmm1, xmm2, xmm2
	vaddpd	xmm1, xmm1, xmm2
	vaddsd	xmm0, xmm0, xmm1
	cmp	r8, rdx
	je	.L138
.L139:
	vmovss	xmm1, DWORD PTR [rax]
	lea	rdx, 4[rax]
	vmulss	xmm1, xmm1, xmm1
	vcvtss2sd	xmm1, xmm1, xmm1
	vaddsd	xmm0, xmm0, xmm1
	cmp	rdi, rdx
	je	.L138
	vmovss	xmm1, DWORD PTR 4[rax]
	lea	rdx, 8[rax]
	vmulss	xmm1, xmm1, xmm1
	vcvtss2sd	xmm1, xmm1, xmm1
	vaddsd	xmm0, xmm0, xmm1
	cmp	rdi, rdx
	je	.L138
	vmovss	xmm1, DWORD PTR 8[rax]
	vmulss	xmm1, xmm1, xmm1
	vcvtss2sd	xmm1, xmm1, xmm1
	vaddsd	xmm0, xmm0, xmm1
.L138:
	vsqrtsd	xmm0, xmm0, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L141:
	vxorpd	xmm0, xmm0, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L145:
	vzeroupper
	vsqrtsd	xmm0, xmm0, xmm0
	ret
.L142:
	xor	edx, edx
	vxorpd	xmm0, xmm0, xmm0
	jmp	.L136
	.cfi_endproc
.LFE5093:
	.size	_Z6lengthRKSt6vectorIfSaIfEE, .-_Z6lengthRKSt6vectorIfSaIfEE
	.p2align 4
	.globl	_Z11sort_valuesRSt6vectorIfSaIfEE
	.type	_Z11sort_valuesRSt6vectorIfSaIfEE, @function
_Z11sort_valuesRSt6vectorIfSaIfEE:
.LFB5094:
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
	je	.L193
	mov	r12, r13
	sub	r12, rbp
	mov	rax, r12
	sar	rax, 2
	mov	edx, 63
	lzcnt	rax, rax
	sub	edx, eax
	movsx	rdx, edx
	add	rdx, rdx
	mov	rsi, r13
	mov	rdi, rbp
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0
	lea	rbx, 4[rbp]
	cmp	r12, 64
	jle	.L148
	lea	r12, 64[rbp]
	mov	r14d, 4
	jmp	.L156
	.p2align 4,,10
	.p2align 3
.L196:
	cmp	rbp, rbx
	je	.L151
	mov	rdx, rbx
	sub	rdx, rbp
	lea	rdi, 0[rbp+r14]
	mov	rsi, rbp
	vmovss	DWORD PTR 12[rsp], xmm1
	call	memmove@PLT
	vmovss	xmm1, DWORD PTR 12[rsp]
.L151:
	add	rbx, 4
	vmovss	DWORD PTR 0[rbp], xmm1
	cmp	r12, rbx
	je	.L195
.L156:
	vmovss	xmm1, DWORD PTR [rbx]
	vcomiss	xmm1, DWORD PTR 0[rbp]
	jb	.L196
	vmovss	xmm0, DWORD PTR -4[rbx]
	lea	rax, -4[rbx]
	vcomiss	xmm0, xmm1
	jbe	.L189
	.p2align 4,,10
	.p2align 3
.L155:
	vmovss	DWORD PTR 4[rax], xmm0
	mov	rdx, rax
	vmovss	xmm0, DWORD PTR -4[rax]
	sub	rax, 4
	vcomiss	xmm0, xmm1
	ja	.L155
.L153:
	add	rbx, 4
	vmovss	DWORD PTR [rdx], xmm1
	cmp	r12, rbx
	jne	.L156
.L195:
	cmp	r13, r12
	je	.L193
	.p2align 4,,10
	.p2align 3
.L157:
	vmovss	xmm1, DWORD PTR [r12]
	vmovss	xmm0, DWORD PTR -4[r12]
	lea	rax, -4[r12]
	vcomiss	xmm0, xmm1
	jbe	.L190
	.p2align 4,,10
	.p2align 3
.L161:
	vmovss	DWORD PTR 4[rax], xmm0
	mov	rdx, rax
	vmovss	xmm0, DWORD PTR -4[rax]
	sub	rax, 4
	vcomiss	xmm0, xmm1
	ja	.L161
	add	r12, 4
	vmovss	DWORD PTR [rdx], xmm1
	cmp	r13, r12
	jne	.L157
.L193:
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
.L148:
	.cfi_restore_state
	mov	r12d, 4
	cmp	r13, rbx
	jne	.L163
	jmp	.L193
	.p2align 4,,10
	.p2align 3
.L197:
	cmp	rbp, rbx
	je	.L166
	mov	rdx, rbx
	sub	rdx, rbp
	lea	rdi, 0[rbp+r12]
	mov	rsi, rbp
	vmovss	DWORD PTR 12[rsp], xmm1
	call	memmove@PLT
	vmovss	xmm1, DWORD PTR 12[rsp]
.L166:
	vmovss	DWORD PTR 0[rbp], xmm1
.L167:
	add	rbx, 4
	cmp	r13, rbx
	je	.L193
.L163:
	vmovss	xmm1, DWORD PTR [rbx]
	vcomiss	xmm1, DWORD PTR 0[rbp]
	jb	.L197
	vmovss	xmm0, DWORD PTR -4[rbx]
	lea	rax, -4[rbx]
	vcomiss	xmm0, xmm1
	jbe	.L192
	.p2align 4,,10
	.p2align 3
.L170:
	vmovss	DWORD PTR 4[rax], xmm0
	mov	rdx, rax
	vmovss	xmm0, DWORD PTR -4[rax]
	sub	rax, 4
	vcomiss	xmm0, xmm1
	ja	.L170
.L168:
	vmovss	DWORD PTR [rdx], xmm1
	jmp	.L167
	.p2align 4,,10
	.p2align 3
.L190:
	mov	rdx, r12
	add	r12, 4
	vmovss	DWORD PTR [rdx], xmm1
	cmp	r13, r12
	jne	.L157
	jmp	.L193
.L192:
	mov	rdx, rbx
	jmp	.L168
.L189:
	mov	rdx, rbx
	jmp	.L153
	.cfi_endproc
.LFE5094:
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
.LFB5447:
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
	jne	.L206
	mov	QWORD PTR [rdi], 0
	mov	QWORD PTR 8[rdi], 0
	mov	QWORD PTR 16[rdi], 0
	mov	rbx, rdi
	mov	rbp, rsi
	lea	r13, 0[0+rsi*4]
	test	rsi, rsi
	je	.L200
	mov	rdi, r13
	call	_Znwm@PLT
	vmovq	xmm1, rax
	vpunpcklqdq	xmm0, xmm1, xmm1
	lea	r12, [rax+r13]
	mov	QWORD PTR 16[rbx], r12
	mov	DWORD PTR [rax], 0x00000000
	vmovdqu	XMMWORD PTR [rbx], xmm0
	lea	rdi, 4[rax]
	cmp	rbp, 1
	je	.L202
	cmp	r12, rdi
	je	.L201
	lea	rdx, -4[r13]
	xor	esi, esi
	call	memset@PLT
.L201:
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
.L200:
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
.L202:
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
.L206:
	.cfi_restore_state
	lea	rdi, .LC1[rip]
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE5447:
	.size	_ZNSt6vectorIfSaIfEEC2EmRKS0_, .-_ZNSt6vectorIfSaIfEEC2EmRKS0_
	.weak	_ZNSt6vectorIfSaIfEEC1EmRKS0_
	.set	_ZNSt6vectorIfSaIfEEC1EmRKS0_,_ZNSt6vectorIfSaIfEEC2EmRKS0_
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB5901:
	.cfi_startproc
	endbr64
	vmovdqa	ymm3, YMMWORD PTR .LC3[rip]
	vmovdqa	ymm4, YMMWORD PTR .LC4[rip]
	vmovdqa	ymm5, YMMWORD PTR .LC5[rip]
	vmovdqa	ymm6, YMMWORD PTR .LC6[rip]
	mov	rax, rdi
	lea	rcx, 1792[rdi]
	mov	rdx, rdi
	vpxor	xmm7, xmm7, xmm7
	.p2align 4,,10
	.p2align 3
.L208:
	vpand	ymm1, ymm4, YMMWORD PTR 8[rdx]
	vpand	ymm0, ymm3, YMMWORD PTR [rdx]
	add	rdx, 32
	vpor	ymm0, ymm0, ymm1
	vpsrlq	ymm1, ymm0, 1
	vpand	ymm0, ymm0, ymm5
	vpxor	ymm1, ymm1, YMMWORD PTR 3144[rdx]
	vpcmpeqq	ymm0, ymm0, ymm7
	vpxor	ymm2, ymm1, ymm6
	vpblendvb	ymm0, ymm2, ymm1, ymm0
	vmovdqu	YMMWORD PTR -32[rdx], ymm0
	cmp	rcx, rdx
	jne	.L208
	vmovdqa	xmm0, XMMWORD PTR .LC7[rip]
	vmovdqa	xmm1, XMMWORD PTR .LC8[rip]
	vpand	xmm0, xmm0, XMMWORD PTR 1792[rax]
	vpand	xmm1, xmm1, XMMWORD PTR 1800[rax]
	mov	rdx, QWORD PTR 1808[rax]
	vpor	xmm0, xmm0, xmm1
	mov	rcx, QWORD PTR 1816[rax]
	vpsrlq	xmm1, xmm0, 1
	vpand	xmm0, xmm0, XMMWORD PTR .LC9[rip]
	and	ecx, 2147483647
	vpxor	xmm1, xmm1, XMMWORD PTR 4968[rax]
	and	rdx, -2147483648
	vpxor	xmm7, xmm7, xmm7
	or	rdx, rcx
	vpcmpeqq	xmm0, xmm0, xmm7
	mov	rcx, rdx
	vpxor	xmm2, xmm1, XMMWORD PTR .LC10[rip]
	shr	rcx
	vpblendvb	xmm0, xmm2, xmm1, xmm0
	xor	rcx, QWORD PTR 4984[rax]
	and	edx, 1
	vmovdqu	XMMWORD PTR 1792[rax], xmm0
	je	.L211
	mov	edx, 2567483615
	xor	rcx, rdx
.L211:
	mov	QWORD PTR 1808[rax], rcx
	lea	rdx, 1816[rax]
	lea	rcx, 4984[rax]
	vpxor	xmm2, xmm2, xmm2
.L210:
	vpand	ymm1, ymm4, YMMWORD PTR 8[rdx]
	vpand	ymm0, ymm3, YMMWORD PTR [rdx]
	add	rdx, 32
	vpor	ymm0, ymm0, ymm1
	vpsrlq	ymm1, ymm0, 1
	vpand	ymm0, ymm0, ymm5
	vpxor	ymm1, ymm1, YMMWORD PTR -1848[rdx]
	vpcmpeqq	ymm0, ymm0, ymm2
	vpxor	ymm7, ymm1, ymm6
	vpblendvb	ymm0, ymm7, ymm1, ymm0
	vmovdqu	YMMWORD PTR -32[rdx], ymm0
	cmp	rdx, rcx
	jne	.L210
	mov	rdx, QWORD PTR 4984[rax]
	mov	rcx, QWORD PTR [rax]
	and	rdx, -2147483648
	and	ecx, 2147483647
	or	rdx, rcx
	mov	rcx, rdx
	shr	rcx
	xor	rcx, QWORD PTR 3168[rax]
	and	edx, 1
	je	.L212
	mov	edx, 2567483615
	xor	rcx, rdx
.L212:
	mov	QWORD PTR 4984[rax], rcx
	mov	QWORD PTR 4992[rax], 0
	vzeroupper
	ret
	.cfi_endproc
.LFE5901:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.text
	.p2align 4
	.globl	_Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE
	.type	_Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE, @function
_Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE:
.LFB5090:
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
	je	.L228
	mov	rax, QWORD PTR 4992[rsi]
	mov	rbp, rsi
	vxorps	xmm2, xmm2, xmm2
	jmp	.L227
	.p2align 4,,10
	.p2align 3
.L226:
	lea	rcx, 1[rax]
	mov	rax, QWORD PTR 0[rbp+rax*8]
	mov	QWORD PTR 4992[rbp], rcx
	mov	rdx, rax
	shr	rdx, 11
	mov	edx, edx
	xor	rax, rdx
	mov	rdx, rax
	sal	rdx, 7
	and	edx, 2636928640
	xor	rax, rdx
	mov	rdx, rax
	sal	rdx, 15
	and	edx, 4022730752
	xor	rax, rdx
	mov	rdx, rax
	shr	rdx, 18
	xor	rax, rdx
	vcvtsi2ss	xmm0, xmm2, rax
	jns	.L221
	mov	rdx, rax
	shr	rdx
	and	eax, 1
	or	rdx, rax
	vcvtsi2ss	xmm0, xmm2, rdx
	vaddss	xmm0, xmm0, xmm0
.L221:
	vcomiss	xmm0, DWORD PTR .LC12[rip]
	vmulss	xmm1, xmm0, DWORD PTR .LC11[rip]
	jnb	.L222
	vmovss	DWORD PTR [rbx], xmm1
	add	rbx, 4
	cmp	r12, rbx
	je	.L228
.L223:
	mov	rax, rcx
.L227:
	cmp	rax, 623
	jbe	.L226
	mov	rdi, rbp
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	mov	rax, QWORD PTR 4992[rbp]
	vxorps	xmm2, xmm2, xmm2
	jmp	.L226
	.p2align 4,,10
	.p2align 3
.L222:
	mov	DWORD PTR [rbx], 0x3f7fffff
	add	rbx, 4
	cmp	r12, rbx
	jne	.L223
.L228:
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	rbp
	.cfi_def_cfa_offset 16
	pop	r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5090:
	.size	_Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE, .-_Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC15:
	.string	"n="
.LC16:
	.string	" len="
.LC17:
	.string	" median="
.LC18:
	.string	"\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB19:
	.section	.text.startup,"ax",@progbits
.LHOTB19:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB5095:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5095
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
	jg	.L286
	mov	DWORD PTR 12[rsp], 1024
	mov	QWORD PTR 16[rsp], 5000000
	mov	r12d, 200
.L231:
	mov	QWORD PTR 176[rsp], 42
	mov	ecx, 42
	mov	edx, 1
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
	inc	rdx
	cmp	rdx, 624
	jne	.L232
	mov	eax, DWORD PTR 12[rsp]
	lea	r13, 144[rsp]
	mov	r15d, eax
	imul	r15d, eax
	lea	rbx, 48[rsp]
	mov	rdx, r13
	movsx	r14, r15d
	mov	rsi, r14
	mov	rdi, rbx
	mov	QWORD PTR 5168[rsp], 624
.LEHB0:
	call	_ZNSt6vectorIfSaIfEEC1EmRKS0_
.LEHE0:
	lea	rax, 80[rsp]
	mov	rdx, r13
	mov	rsi, r14
	mov	rdi, rax
	mov	QWORD PTR 24[rsp], rax
.LEHB1:
	call	_ZNSt6vectorIfSaIfEEC1EmRKS0_
.LEHE1:
	mov	QWORD PTR 112[rsp], 0
	mov	QWORD PTR 120[rsp], 0
	mov	QWORD PTR 128[rsp], 0
	test	r15d, r15d
	je	.L233
	sal	r14, 2
	mov	rdi, r14
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	vmovq	xmm1, rax
	vpunpcklqdq	xmm0, xmm1, xmm1
	lea	r15, [rax+r14]
	mov	rdi, rax
	mov	rdx, r14
	xor	esi, esi
	mov	QWORD PTR 128[rsp], r15
	vmovdqa	XMMWORD PTR 112[rsp], xmm0
	call	memset@PLT
.L248:
	mov	rsi, rbp
	mov	rdi, rbx
	mov	QWORD PTR 120[rsp], r15
	call	_Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE
	mov	r15, QWORD PTR 24[rsp]
	mov	rsi, rbp
	mov	rdi, r15
	call	_Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE
	lea	r14, 112[rsp]
	mov	ecx, DWORD PTR 12[rsp]
	mov	rdx, r14
	mov	rsi, r15
	mov	rdi, rbx
	call	_Z6matmulRKSt6vectorIfSaIfEES3_RS1_i
	test	r12d, r12d
	jle	.L234
	xor	r9d, r9d
	.p2align 4,,10
	.p2align 3
.L235:
	vmovss	xmm0, DWORD PTR .LC14[rip]
	mov	rsi, rbx
	mov	rdi, r14
	inc	r9d
	call	_Z5saxpyRSt6vectorIfSaIfEERKS1_f
	cmp	r9d, r12d
	jne	.L235
.L234:
	mov	rdi, r14
	call	_Z6lengthRKSt6vectorIfSaIfEE
	mov	r15, QWORD PTR 16[rsp]
	lea	rdx, 47[rsp]
	mov	rsi, r15
	mov	rdi, r13
	vmovq	rbx, xmm0
.LEHB3:
	call	_ZNSt6vectorIfSaIfEEC1EmRKS0_
.LEHE3:
	mov	rsi, rbp
	mov	rdi, r13
	call	_Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE
	lea	rbp, _ZSt4cout[rip]
	mov	rdi, r13
	call	_Z11sort_valuesRSt6vectorIfSaIfEE
	mov	edx, 2
	lea	rsi, .LC15[rip]
	mov	rdi, rbp
.LEHB4:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	mov	esi, DWORD PTR 12[rsp]
	mov	rdi, rbp
	call	_ZNSolsEi@PLT
	mov	edx, 5
	lea	rsi, .LC16[rip]
	mov	rdi, rax
	mov	rbp, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovq	xmm0, rbx
	mov	rdi, rbp
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	mov	edx, 8
	lea	rsi, .LC17[rip]
	mov	rdi, rax
	mov	rbp, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	mov	r12, QWORD PTR 144[rsp]
	mov	rax, r15
	shr	rax
	vxorps	xmm0, xmm0, xmm0
	mov	rdi, rbp
	vcvtss2sd	xmm0, xmm0, DWORD PTR [r12+rax*4]
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	mov	rdi, rax
	mov	edx, 1
	lea	rsi, .LC18[rip]
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
	jne	.L287
	add	rsp, 5192
	.cfi_remember_state
	.cfi_def_cfa_offset 56
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
	xor	eax, eax
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.L286:
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
	mov	QWORD PTR 16[rsp], rax
	jmp	.L231
.L233:
	mov	QWORD PTR 112[rsp], 0
	mov	QWORD PTR 128[rsp], 0
	xor	r15d, r15d
	jmp	.L248
.L251:
	mov	QWORD PTR 16[rsp], 5000000
	mov	r12d, 200
	jmp	.L231
.L287:
	call	__stack_chk_fail@PLT
.L252:
	mov	QWORD PTR 16[rsp], 5000000
	jmp	.L231
.L253:
	endbr64
	mov	rbp, rax
	vzeroupper
	jmp	.L246
.L254:
	endbr64
	mov	rbp, rax
	vzeroupper
	jmp	.L244
.L256:
	endbr64
	mov	rbp, rax
	jmp	.L240
.L255:
	endbr64
	mov	rbp, rax
	vzeroupper
	jmp	.L242
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA5095:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5095-.LLSDACSB5095
.LLSDACSB5095:
	.uleb128 .LEHB0-.LFB5095
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB5095
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L253-.LFB5095
	.uleb128 0
	.uleb128 .LEHB2-.LFB5095
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L254-.LFB5095
	.uleb128 0
	.uleb128 .LEHB3-.LFB5095
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L255-.LFB5095
	.uleb128 0
	.uleb128 .LEHB4-.LFB5095
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L256-.LFB5095
	.uleb128 0
.LLSDACSE5095:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC5095
	.type	main.cold, @function
main.cold:
.LFSB5095:
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
	je	.L284
	vzeroupper
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
.L284:
	vzeroupper
	jmp	.L242
	.cfi_endproc
.LFE5095:
	.section	.gcc_except_table
.LLSDAC5095:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC5095-.LLSDACSBC5095
.LLSDACSBC5095:
	.uleb128 .LEHB5-.LCOLDB19
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC5095:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE19:
	.section	.text.startup
.LHOTE19:
	.p2align 4
	.type	_GLOBAL__sub_I__Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE, @function
_GLOBAL__sub_I__Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE:
.LFB5939:
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
	lea	rdx, __dso_handle[rip]
	pop	rbp
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE5939:
	.size	_GLOBAL__sub_I__Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE, .-_GLOBAL__sub_I__Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z9randomizeRSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC3:
	.quad	-2147483648
	.quad	-2147483648
	.quad	-2147483648
	.quad	-2147483648
	.align 32
.LC4:
	.quad	2147483647
	.quad	2147483647
	.quad	2147483647
	.quad	2147483647
	.align 32
.LC5:
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.align 32
.LC6:
	.quad	2567483615
	.quad	2567483615
	.quad	2567483615
	.quad	2567483615
	.set	.LC7,.LC3
	.set	.LC8,.LC4
	.set	.LC9,.LC5
	.set	.LC10,.LC6
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC11:
	.long	796917760
	.align 4
.LC12:
	.long	1333788672
	.align 4
.LC14:
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
