	.file	"main.cpp"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.text
	.globl	_Z11resetPointsPSt6vectorI5pointSaIS0_EEPd
	.type	_Z11resetPointsPSt6vectorI5pointSaIS0_EEPd, @function
_Z11resetPointsPSt6vectorI5pointSaIS0_EEPd:
.LFB1465:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, %edi
	.cfi_offset 3, -32
	.cfi_offset 12, -24
	call	glBegin
	movl	$0, -20(%rbp)
	jmp	.L2
.L8:
	movq	-48(%rbp), %rax
	addq	$32, %rax
	movsd	(%rax), %xmm0
	movsd	.LC0(%rip), %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L3
	movsd	.LC0(%rip), %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.L3
.L9:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI5pointSaIS0_EEixEm
	movl	48(%rax), %eax
	movzbl	%al, %r12d
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI5pointSaIS0_EEixEm
	movl	44(%rax), %eax
	movzbl	%al, %ebx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI5pointSaIS0_EEixEm
	movl	40(%rax), %eax
	movzbl	%al, %eax
	movl	%r12d, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	glColor3ub
	jmp	.L5
.L3:
	movq	-48(%rbp), %rax
	addq	$32, %rax
	movsd	(%rax), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L6
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.L6
.L10:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI5pointSaIS0_EEixEm
	movl	36(%rax), %eax
	movzbl	%al, %r12d
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI5pointSaIS0_EEixEm
	movl	36(%rax), %eax
	movzbl	%al, %ebx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI5pointSaIS0_EEixEm
	movl	36(%rax), %eax
	movzbl	%al, %eax
	movl	%r12d, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	glColor3ub
	jmp	.L5
.L6:
	movl	$100, %edx
	movl	$100, %esi
	movl	$100, %edi
	call	glColor3ub
.L5:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI5pointSaIS0_EEixEm
	movsd	8(%rax), %xmm0
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1
	divsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm0
	movsd	.LC0(%rip), %xmm1
	subsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -52(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI5pointSaIS0_EEixEm
	movsd	16(%rax), %xmm0
	movq	-48(%rbp), %rax
	addq	$24, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1
	divsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm0
	movsd	.LC0(%rip), %xmm1
	subsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -56(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI5pointSaIS0_EEixEm
	movsd	(%rax), %xmm0
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1
	divsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm0
	movsd	.LC0(%rip), %xmm1
	subsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	-52(%rbp), %xmm2
	movss	-56(%rbp), %xmm1
	call	glVertex3f
	addl	$1, -20(%rbp)
.L2:
	movl	-20(%rbp), %eax
	movslq	%eax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI5pointSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	setb	%al
	testb	%al, %al
	jne	.L8
	call	glEnd
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1465:
	.size	_Z11resetPointsPSt6vectorI5pointSaIS0_EEPd, .-_Z11resetPointsPSt6vectorI5pointSaIS0_EEPd
	.globl	_Z8drawaxesPfS_S_
	.type	_Z8drawaxesPfS_S_, @function
_Z8drawaxesPfS_S_:
.LFB1466:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, %edi
	call	glBegin
	movl	$0, %edx
	movl	$0, %esi
	movl	$255, %edi
	call	glColor3ub
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movss	(%rax), %xmm1
	xorps	%xmm0, %xmm0
	movaps	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movss	(%rax), %xmm1
	xorps	%xmm0, %xmm0
	mulss	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm3
	xorps	%xmm0, %xmm0
	mulss	%xmm3, %xmm0
	call	glVertex3f
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movss	(%rax), %xmm1
	movss	.LC3(%rip), %xmm0
	movaps	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movss	(%rax), %xmm1
	movss	.LC3(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm3
	movss	.LC3(%rip), %xmm0
	mulss	%xmm3, %xmm0
	call	glVertex3f
	call	glEnd
	movl	$1, %edi
	call	glBegin
	movl	$0, %edx
	movl	$255, %esi
	movl	$0, %edi
	call	glColor3ub
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movss	(%rax), %xmm1
	xorps	%xmm0, %xmm0
	movaps	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movss	(%rax), %xmm1
	xorps	%xmm0, %xmm0
	mulss	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm3
	xorps	%xmm0, %xmm0
	mulss	%xmm3, %xmm0
	call	glVertex3f
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movss	(%rax), %xmm1
	movss	.LC3(%rip), %xmm0
	movaps	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movss	(%rax), %xmm1
	movss	.LC3(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm3
	movss	.LC3(%rip), %xmm0
	mulss	%xmm3, %xmm0
	call	glVertex3f
	call	glEnd
	movl	$1, %edi
	call	glBegin
	movl	$255, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	glColor3ub
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movss	(%rax), %xmm1
	xorps	%xmm0, %xmm0
	movaps	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movss	(%rax), %xmm1
	xorps	%xmm0, %xmm0
	mulss	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm3
	xorps	%xmm0, %xmm0
	mulss	%xmm3, %xmm0
	call	glVertex3f
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movss	(%rax), %xmm1
	movss	.LC3(%rip), %xmm0
	movaps	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movss	(%rax), %xmm1
	movss	.LC3(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm3
	movss	.LC3(%rip), %xmm0
	mulss	%xmm3, %xmm0
	call	glVertex3f
	call	glEnd
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1466:
	.size	_Z8drawaxesPfS_S_, .-_Z8drawaxesPfS_S_
	.section	.rodata
.LC7:
	.string	"Initializing Graphics Window"
.LC8:
	.string	"Failed to start GLFW"
.LC9:
	.string	"PointViewer"
.LC18:
	.string	"terminating GLFW"
.LC19:
	.string	"program complete"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1467:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1467
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$280, %rsp
	movl	%edi, -244(%rbp)
	movq	%rsi, -256(%rbp)
	movl	$0x3f800000, %eax
	movl	%eax, -36(%rbp)
	movl	$0x3f800000, %eax
	movl	%eax, -96(%rbp)
	movl	$0x00000000, %eax
	movl	%eax, -92(%rbp)
	movl	$0x00000000, %eax
	movl	%eax, -88(%rbp)
	movl	$0x00000000, %eax
	movl	%eax, -80(%rbp)
	movl	$0x3f800000, %eax
	movl	%eax, -76(%rbp)
	movl	$0x00000000, %eax
	movl	%eax, -72(%rbp)
	movl	$0x00000000, %eax
	movl	%eax, -64(%rbp)
	movl	$0x00000000, %eax
	movl	%eax, -60(%rbp)
	movl	$0x3f800000, %eax
	movl	%eax, -56(%rbp)
	movl	$0x3f7ff605, %eax
	movl	%eax, -32(%rbp)
	movl	$0x3c8ef858, %eax
	movl	%eax, -28(%rbp)
	movb	$0, -17(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
.LEHB0:
	.cfi_offset 3, -24
	call	_ZNSsC1Ev
.LEHE0:
	movabsq	$4607182418800017408, %rax
	movq	%rax, -144(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
.LEHB1:
	call	_ZNSt6vectorI5pointSaIS0_EEC1Ev
.LEHE1:
	leaq	-176(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_Z11load_pointsPSt6vectorI5pointSaIS0_EEPd
	movl	$0, %edi
	call	time
	movl	%eax, -24(%rbp)
	movl	$.LC7, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	call	glfwInit
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L13
	movl	$.LC8, %esi
	movl	$_ZSt4cerr, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ebx
	jmp	.L14
.L13:
	movl	$65537, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$800, %esi
	movl	$800, %edi
	call	glfwOpenWindow
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L15
	call	glfwTerminate
	movl	$-1, %ebx
	jmp	.L14
.L15:
	movl	$.LC9, %edi
	call	glfwSetWindowTitle
	movl	$196610, %edi
	call	glfwEnable
	movl	$2832, %edi
	call	glEnable
	movss	.LC4(%rip), %xmm0
	call	glPointSize
	movsd	.LC10(%rip), %xmm5
	movsd	.LC11(%rip), %xmm4
	movsd	.LC10(%rip), %xmm3
	movsd	.LC11(%rip), %xmm2
	movsd	.LC10(%rip), %xmm1
	movsd	.LC11(%rip), %xmm0
	call	glOrtho
	jmp	.L16
.L35:
	xorps	%xmm3, %xmm3
	movss	.LC12(%rip), %xmm2
	xorps	%xmm1, %xmm1
	movss	.LC13(%rip), %xmm0
	call	glClearColor
	movl	$16384, %edi
	call	glClear
	leaq	-176(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z11resetPointsPSt6vectorI5pointSaIS0_EEPd
	leaq	-64(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z8drawaxesPfS_S_
	movl	$3, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	glDrawArrays
	movl	$3, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	glDrawArrays
	call	glfwSwapBuffers
	call	glfwPollEvents
	movl	$32, %edi
	call	glfwGetKey
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L17
	movl	$290, %edi
	call	glfwGetKey
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L18
	movss	-56(%rbp), %xmm2
	movss	-60(%rbp), %xmm1
	movss	-64(%rbp), %xmm0
	movaps	%xmm2, %xmm3
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movss	.LC4(%rip), %xmm0
	call	glRotatef
	jmp	.L16
.L18:
	movss	-56(%rbp), %xmm2
	movss	-60(%rbp), %xmm1
	movss	-64(%rbp), %xmm0
	movaps	%xmm2, %xmm3
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movss	.LC14(%rip), %xmm0
	call	glRotatef
	jmp	.L16
.L17:
	movl	$283, %edi
	call	glfwGetKey
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L19
	movl	$290, %edi
	call	glfwGetKey
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L20
	xorps	%xmm2, %xmm2
	movss	.LC3(%rip), %xmm1
	xorps	%xmm0, %xmm0
	call	glTranslatef
	jmp	.L16
.L20:
	movss	-88(%rbp), %xmm2
	movss	-92(%rbp), %xmm1
	movss	-96(%rbp), %xmm0
	movaps	%xmm2, %xmm3
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movss	.LC14(%rip), %xmm0
	call	glRotatef
	jmp	.L16
.L19:
	movl	$284, %edi
	call	glfwGetKey
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L21
	movl	$290, %edi
	call	glfwGetKey
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L22
	xorps	%xmm2, %xmm2
	movss	.LC15(%rip), %xmm1
	xorps	%xmm0, %xmm0
	call	glTranslatef
	jmp	.L16
.L22:
	movss	-88(%rbp), %xmm2
	movss	-92(%rbp), %xmm1
	movss	-96(%rbp), %xmm0
	movaps	%xmm2, %xmm3
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movss	.LC4(%rip), %xmm0
	call	glRotatef
	jmp	.L16
.L21:
	movl	$285, %edi
	call	glfwGetKey
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L23
	movl	$290, %edi
	call	glfwGetKey
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L24
	xorps	%xmm2, %xmm2
	xorps	%xmm1, %xmm1
	movss	.LC3(%rip), %xmm0
	call	glTranslatef
	jmp	.L16
.L24:
	movss	-72(%rbp), %xmm2
	movss	-76(%rbp), %xmm1
	movss	-80(%rbp), %xmm0
	movaps	%xmm2, %xmm3
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movss	.LC14(%rip), %xmm0
	call	glRotatef
	jmp	.L16
.L23:
	movl	$286, %edi
	call	glfwGetKey
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L25
	movl	$290, %edi
	call	glfwGetKey
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L26
	xorps	%xmm2, %xmm2
	xorps	%xmm1, %xmm1
	movss	.LC15(%rip), %xmm0
	call	glTranslatef
	jmp	.L16
.L26:
	movss	-72(%rbp), %xmm2
	movss	-76(%rbp), %xmm1
	movss	-80(%rbp), %xmm0
	movaps	%xmm2, %xmm3
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movss	.LC4(%rip), %xmm0
	call	glRotatef
	jmp	.L16
.L25:
	movl	$0, %edi
	call	glfwGetMouseButton
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L27
	movss	.LC16(%rip), %xmm2
	movss	.LC16(%rip), %xmm1
	movss	.LC16(%rip), %xmm0
	call	glScalef
	jmp	.L16
.L27:
	movl	$1, %edi
	call	glfwGetMouseButton
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L28
	movss	.LC17(%rip), %xmm2
	movss	.LC17(%rip), %xmm1
	movss	.LC17(%rip), %xmm0
	call	glScalef
	jmp	.L16
.L28:
	movl	$82, %edi
	call	glfwGetKey
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L29
	call	glLoadIdentity
	leaq	-240(%rbp), %rax
	movq	%rax, %rsi
	movl	$2982, %edi
	call	glGetFloatv
	movl	-240(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-224(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-208(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	-236(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-220(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-204(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-232(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-216(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-200(%rbp), %eax
	movl	%eax, -56(%rbp)
	jmp	.L16
.L29:
	movl	$71, %edi
	call	glfwGetKey
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L30
	leaq	-240(%rbp), %rax
	movq	%rax, %rsi
	movl	$2982, %edi
	call	glGetFloatv
	movl	-240(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-224(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-208(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	-236(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-220(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-204(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-232(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-216(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-200(%rbp), %eax
	movl	%eax, -56(%rbp)
	jmp	.L16
.L30:
	movl	$67, %edi
	call	glfwGetKey
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	movzbl	-17(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L31
	movsd	-144(%rbp), %xmm1
	movsd	.LC0(%rip), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	cvtsi2ss	%edx, %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	%xmm0, -144(%rbp)
	movb	$1, -17(%rbp)
	jmp	.L16
.L31:
	movl	$67, %edi
	call	glfwGetKey
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L32
	movb	$0, -17(%rbp)
	jmp	.L16
.L32:
	movl	$47, %edi
	call	glfwGetKey
	testl	%eax, %eax
.L16:
	movl	$257, %edi
	call	glfwGetKey
	cmpl	$1, %eax
	je	.L33
	movl	$131073, %edi
	call	glfwGetWindowParam
	testl	%eax, %eax
	je	.L33
	movl	$1, %eax
	jmp	.L34
.L33:
	movl	$0, %eax
.L34:
	testb	%al, %al
	jne	.L35
	movl	$.LC18, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	call	glfwTerminate
	movl	$.LC19, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
.LEHE2:
	movl	$0, %ebx
.L14:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt6vectorI5pointSaIS0_EED1Ev
.LEHE3:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
.LEHB4:
	call	_ZNSsD1Ev
.LEHE4:
	movl	%ebx, %eax
	addq	$280, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L39:
	.cfi_restore_state
	movq	%rax, %rbx
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI5pointSaIS0_EED1Ev
	jmp	.L37
.L38:
	movq	%rax, %rbx
.L37:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB5:
	call	_Unwind_Resume
.LEHE5:
	.cfi_endproc
.LFE1467:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1467:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1467-.LLSDACSB1467
.LLSDACSB1467:
	.uleb128 .LEHB0-.LFB1467
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1467
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L38-.LFB1467
	.uleb128 0
	.uleb128 .LEHB2-.LFB1467
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L39-.LFB1467
	.uleb128 0
	.uleb128 .LEHB3-.LFB1467
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L38-.LFB1467
	.uleb128 0
	.uleb128 .LEHB4-.LFB1467
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB1467
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE1467:
	.text
	.size	main, .-main
	.section	.text._ZNKSt6vectorI5pointSaIS0_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorI5pointSaIS0_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI5pointSaIS0_EE4sizeEv
	.type	_ZNKSt6vectorI5pointSaIS0_EE4sizeEv, @function
_ZNKSt6vectorI5pointSaIS0_EE4sizeEv:
.LFB1469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	sarq	$3, %rdx
	movabsq	$7905747460161236407, %rax
	imulq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1469:
	.size	_ZNKSt6vectorI5pointSaIS0_EE4sizeEv, .-_ZNKSt6vectorI5pointSaIS0_EE4sizeEv
	.section	.text._ZNSt6vectorI5pointSaIS0_EEixEm,"axG",@progbits,_ZNSt6vectorI5pointSaIS0_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorI5pointSaIS0_EEixEm
	.type	_ZNSt6vectorI5pointSaIS0_EEixEm, @function
_ZNSt6vectorI5pointSaIS0_EEixEm:
.LFB1470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	salq	$3, %rax
	leaq	0(,%rax,8), %rcx
	movq	%rcx, %rbx
	.cfi_offset 3, -24
	subq	%rax, %rbx
	movq	%rbx, %rax
	addq	%rdx, %rax
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1470:
	.size	_ZNSt6vectorI5pointSaIS0_EEixEm, .-_ZNSt6vectorI5pointSaIS0_EEixEm
	.section	.text._ZNSt6vectorI5pointSaIS0_EEC2Ev,"axG",@progbits,_ZNSt6vectorI5pointSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI5pointSaIS0_EEC2Ev
	.type	_ZNSt6vectorI5pointSaIS0_EEC2Ev, @function
_ZNSt6vectorI5pointSaIS0_EEC2Ev:
.LFB1481:
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
	call	_ZNSt12_Vector_baseI5pointSaIS0_EEC2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1481:
	.size	_ZNSt6vectorI5pointSaIS0_EEC2Ev, .-_ZNSt6vectorI5pointSaIS0_EEC2Ev
	.section	.text._ZNSt6vectorI5pointSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI5pointSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI5pointSaIS0_EED2Ev
	.type	_ZNSt6vectorI5pointSaIS0_EED2Ev, @function
_ZNSt6vectorI5pointSaIS0_EED2Ev:
.LFB1484:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1484
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	_ZNSt12_Vector_baseI5pointSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZSt8_DestroyIP5pointS0_EvT_S2_RSaIT0_E
.LEHE6:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
.LEHB7:
	call	_ZNSt12_Vector_baseI5pointSaIS0_EED2Ev
.LEHE7:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L46:
	.cfi_restore_state
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI5pointSaIS0_EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB8:
	call	_Unwind_Resume
.LEHE8:
	.cfi_endproc
.LFE1484:
	.section	.gcc_except_table
.LLSDA1484:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1484-.LLSDACSB1484
.LLSDACSB1484:
	.uleb128 .LEHB6-.LFB1484
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L46-.LFB1484
	.uleb128 0
	.uleb128 .LEHB7-.LFB1484
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB1484
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE1484:
	.section	.text._ZNSt6vectorI5pointSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI5pointSaIS0_EED5Ev,comdat
	.size	_ZNSt6vectorI5pointSaIS0_EED2Ev, .-_ZNSt6vectorI5pointSaIS0_EED2Ev
	.section	.text._ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implD2Ev:
.LFB1507:
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
	call	_ZNSaI5pointED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1507:
	.size	_ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseI5pointSaIS0_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI5pointSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI5pointSaIS0_EEC2Ev
	.type	_ZNSt12_Vector_baseI5pointSaIS0_EEC2Ev, @function
_ZNSt12_Vector_baseI5pointSaIS0_EEC2Ev:
.LFB1509:
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
	call	_ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implC1Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1509:
	.size	_ZNSt12_Vector_baseI5pointSaIS0_EEC2Ev, .-_ZNSt12_Vector_baseI5pointSaIS0_EEC2Ev
	.section	.text._ZNSt12_Vector_baseI5pointSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI5pointSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI5pointSaIS0_EED2Ev
	.type	_ZNSt12_Vector_baseI5pointSaIS0_EED2Ev, @function
_ZNSt12_Vector_baseI5pointSaIS0_EED2Ev:
.LFB1512:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1512
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	sarq	$3, %rdx
	movabsq	$7905747460161236407, %rax
	imulq	%rdx, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB9:
	.cfi_offset 3, -24
	call	_ZNSt12_Vector_baseI5pointSaIS0_EE13_M_deallocateEPS0_m
.LEHE9:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implD1Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L53:
	.cfi_restore_state
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB10:
	call	_Unwind_Resume
.LEHE10:
	.cfi_endproc
.LFE1512:
	.section	.gcc_except_table
.LLSDA1512:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1512-.LLSDACSB1512
.LLSDACSB1512:
	.uleb128 .LEHB9-.LFB1512
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L53-.LFB1512
	.uleb128 0
	.uleb128 .LEHB10-.LFB1512
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE1512:
	.section	.text._ZNSt12_Vector_baseI5pointSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI5pointSaIS0_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseI5pointSaIS0_EED2Ev, .-_ZNSt12_Vector_baseI5pointSaIS0_EED2Ev
	.section	.text._ZNSt12_Vector_baseI5pointSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI5pointSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI5pointSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseI5pointSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseI5pointSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB1514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1514:
	.size	_ZNSt12_Vector_baseI5pointSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseI5pointSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIP5pointS0_EvT_S2_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIP5pointS0_EvT_S2_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIP5pointS0_EvT_S2_RSaIT0_E
	.type	_ZSt8_DestroyIP5pointS0_EvT_S2_RSaIT0_E, @function
_ZSt8_DestroyIP5pointS0_EvT_S2_RSaIT0_E:
.LFB1515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIP5pointEvT_S2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1515:
	.size	_ZSt8_DestroyIP5pointS0_EvT_S2_RSaIT0_E, .-_ZSt8_DestroyIP5pointS0_EvT_S2_RSaIT0_E
	.section	.text._ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implC2Ev:
.LFB1532:
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
	call	_ZNSaI5pointEC2Ev
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1532:
	.size	_ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implC2Ev
	.section	.text._ZNSaI5pointED2Ev,"axG",@progbits,_ZNSaI5pointED5Ev,comdat
	.align 2
	.weak	_ZNSaI5pointED2Ev
	.type	_ZNSaI5pointED2Ev, @function
_ZNSaI5pointED2Ev:
.LFB1535:
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
	call	_ZN9__gnu_cxx13new_allocatorI5pointED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1535:
	.size	_ZNSaI5pointED2Ev, .-_ZNSaI5pointED2Ev
	.section	.text._ZNSt12_Vector_baseI5pointSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI5pointSaIS0_EE13_M_deallocateEPS0_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI5pointSaIS0_EE13_M_deallocateEPS0_m
	.type	_ZNSt12_Vector_baseI5pointSaIS0_EE13_M_deallocateEPS0_m, @function
_ZNSt12_Vector_baseI5pointSaIS0_EE13_M_deallocateEPS0_m:
.LFB1537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L59
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI5pointE10deallocateEPS1_m
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1537:
	.size	_ZNSt12_Vector_baseI5pointSaIS0_EE13_M_deallocateEPS0_m, .-_ZNSt12_Vector_baseI5pointSaIS0_EE13_M_deallocateEPS0_m
	.section	.text._ZSt8_DestroyIP5pointEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP5pointEvT_S2_,comdat
	.weak	_ZSt8_DestroyIP5pointEvT_S2_
	.type	_ZSt8_DestroyIP5pointEvT_S2_, @function
_ZSt8_DestroyIP5pointEvT_S2_:
.LFB1538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIP5pointEEvT_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1538:
	.size	_ZSt8_DestroyIP5pointEvT_S2_, .-_ZSt8_DestroyIP5pointEvT_S2_
	.section	.text._ZNSaI5pointEC2Ev,"axG",@progbits,_ZNSaI5pointEC5Ev,comdat
	.align 2
	.weak	_ZNSaI5pointEC2Ev
	.type	_ZNSaI5pointEC2Ev, @function
_ZNSaI5pointEC2Ev:
.LFB1545:
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
	call	_ZN9__gnu_cxx13new_allocatorI5pointEC2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1545:
	.size	_ZNSaI5pointEC2Ev, .-_ZNSaI5pointEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorI5pointED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI5pointED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI5pointED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI5pointED2Ev, @function
_ZN9__gnu_cxx13new_allocatorI5pointED2Ev:
.LFB1548:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1548:
	.size	_ZN9__gnu_cxx13new_allocatorI5pointED2Ev, .-_ZN9__gnu_cxx13new_allocatorI5pointED2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorI5pointE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI5pointE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI5pointE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorI5pointE10deallocateEPS1_m, @function
_ZN9__gnu_cxx13new_allocatorI5pointE10deallocateEPS1_m:
.LFB1550:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1550:
	.size	_ZN9__gnu_cxx13new_allocatorI5pointE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorI5pointE10deallocateEPS1_m
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIP5pointEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIP5pointEEvT_S4_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIP5pointEEvT_S4_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIP5pointEEvT_S4_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIP5pointEEvT_S4_:
.LFB1551:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1551:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIP5pointEEvT_S4_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIP5pointEEvT_S4_
	.section	.text._ZN9__gnu_cxx13new_allocatorI5pointEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI5pointEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI5pointEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI5pointEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorI5pointEC2Ev:
.LFB1553:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1553:
	.size	_ZN9__gnu_cxx13new_allocatorI5pointEC2Ev, .-_ZN9__gnu_cxx13new_allocatorI5pointEC2Ev
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1555:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L68
	cmpl	$65535, -8(%rbp)
	jne	.L68
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %eax
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movq	%rax, %rdi
	call	__cxa_atexit
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1555:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z11resetPointsPSt6vectorI5pointSaIS0_EEPd, @function
_GLOBAL__sub_I__Z11resetPointsPSt6vectorI5pointSaIS0_EEPd:
.LFB1556:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1556:
	.size	_GLOBAL__sub_I__Z11resetPointsPSt6vectorI5pointSaIS0_EEPd, .-_GLOBAL__sub_I__Z11resetPointsPSt6vectorI5pointSaIS0_EEPd
	.section	.ctors,"aw",@progbits
	.align 8
	.quad	_GLOBAL__sub_I__Z11resetPointsPSt6vectorI5pointSaIS0_EEPd
	.section	.rodata
	.align 8
	.type	_ZZL18__gthread_active_pvE20__gthread_active_ptr, @object
	.size	_ZZL18__gthread_active_pvE20__gthread_active_ptr, 8
_ZZL18__gthread_active_pvE20__gthread_active_ptr:
	.quad	_ZL22__gthrw_pthread_cancelm
	.weakref	_ZL20__gthrw_pthread_oncePiPFvvE,pthread_once
	.weakref	_ZL27__gthrw_pthread_getspecificj,pthread_getspecific
	.weakref	_ZL27__gthrw_pthread_setspecificjPKv,pthread_setspecific
	.weakref	_ZL22__gthrw_pthread_createPmPK14pthread_attr_tPFPvS3_ES3_,pthread_create
	.weakref	_ZL20__gthrw_pthread_joinmPPv,pthread_join
	.weakref	_ZL21__gthrw_pthread_equalmm,pthread_equal
	.weakref	_ZL20__gthrw_pthread_selfv,pthread_self
	.weakref	_ZL22__gthrw_pthread_detachm,pthread_detach
	.weakref	_ZL22__gthrw_pthread_cancelm,pthread_cancel
	.weakref	_ZL19__gthrw_sched_yieldv,sched_yield
	.weakref	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t,pthread_mutex_lock
	.weakref	_ZL29__gthrw_pthread_mutex_trylockP15pthread_mutex_t,pthread_mutex_trylock
	.weakref	_ZL31__gthrw_pthread_mutex_timedlockP15pthread_mutex_tPK8timespec,pthread_mutex_timedlock
	.weakref	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t,pthread_mutex_unlock
	.weakref	_ZL26__gthrw_pthread_mutex_initP15pthread_mutex_tPK19pthread_mutexattr_t,pthread_mutex_init
	.weakref	_ZL29__gthrw_pthread_mutex_destroyP15pthread_mutex_t,pthread_mutex_destroy
	.weakref	_ZL30__gthrw_pthread_cond_broadcastP14pthread_cond_t,pthread_cond_broadcast
	.weakref	_ZL27__gthrw_pthread_cond_signalP14pthread_cond_t,pthread_cond_signal
	.weakref	_ZL25__gthrw_pthread_cond_waitP14pthread_cond_tP15pthread_mutex_t,pthread_cond_wait
	.weakref	_ZL30__gthrw_pthread_cond_timedwaitP14pthread_cond_tP15pthread_mutex_tPK8timespec,pthread_cond_timedwait
	.weakref	_ZL28__gthrw_pthread_cond_destroyP14pthread_cond_t,pthread_cond_destroy
	.weakref	_ZL26__gthrw_pthread_key_createPjPFvPvE,pthread_key_create
	.weakref	_ZL26__gthrw_pthread_key_deletej,pthread_key_delete
	.weakref	_ZL30__gthrw_pthread_mutexattr_initP19pthread_mutexattr_t,pthread_mutexattr_init
	.weakref	_ZL33__gthrw_pthread_mutexattr_settypeP19pthread_mutexattr_ti,pthread_mutexattr_settype
	.weakref	_ZL33__gthrw_pthread_mutexattr_destroyP19pthread_mutexattr_t,pthread_mutexattr_destroy
	.weak	_ZNSt6vectorI5pointSaIS0_EEC1Ev
	.set	_ZNSt6vectorI5pointSaIS0_EEC1Ev,_ZNSt6vectorI5pointSaIS0_EEC2Ev
	.weak	_ZNSt6vectorI5pointSaIS0_EED1Ev
	.set	_ZNSt6vectorI5pointSaIS0_EED1Ev,_ZNSt6vectorI5pointSaIS0_EED2Ev
	.weak	_ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseI5pointSaIS0_EEC1Ev
	.set	_ZNSt12_Vector_baseI5pointSaIS0_EEC1Ev,_ZNSt12_Vector_baseI5pointSaIS0_EEC2Ev
	.weak	_ZNSt12_Vector_baseI5pointSaIS0_EED1Ev
	.set	_ZNSt12_Vector_baseI5pointSaIS0_EED1Ev,_ZNSt12_Vector_baseI5pointSaIS0_EED2Ev
	.weak	_ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseI5pointSaIS0_EE12_Vector_implC2Ev
	.weak	_ZNSaI5pointED1Ev
	.set	_ZNSaI5pointED1Ev,_ZNSaI5pointED2Ev
	.weak	_ZNSaI5pointEC1Ev
	.set	_ZNSaI5pointEC1Ev,_ZNSaI5pointEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI5pointED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI5pointED1Ev,_ZN9__gnu_cxx13new_allocatorI5pointED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI5pointEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI5pointEC1Ev,_ZN9__gnu_cxx13new_allocatorI5pointEC2Ev
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 4
.LC3:
	.long	1036831949
	.align 4
.LC4:
	.long	1065353216
	.align 8
.LC10:
	.long	0
	.long	1076101120
	.align 8
.LC11:
	.long	0
	.long	-1071382528
	.align 4
.LC12:
	.long	1039516303
	.align 4
.LC13:
	.long	1042536202
	.align 4
.LC14:
	.long	3212836864
	.align 4
.LC15:
	.long	3184315597
	.align 4
.LC16:
	.long	1066192077
	.align 4
.LC17:
	.long	1063828014
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
