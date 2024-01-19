	.file	"example1.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
	.align 4
	.type	_ZN9__gnu_cxxL21__default_lock_policyE, @object
	.size	_ZN9__gnu_cxxL21__default_lock_policyE, 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.long	2
	.type	_ZN6__pstl9execution2v1L3seqE, @object
	.size	_ZN6__pstl9execution2v1L3seqE, 1
_ZN6__pstl9execution2v1L3seqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L3parE, @object
	.size	_ZN6__pstl9execution2v1L3parE, 1
_ZN6__pstl9execution2v1L3parE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L9par_unseqE, @object
	.size	_ZN6__pstl9execution2v1L9par_unseqE, 1
_ZN6__pstl9execution2v1L9par_unseqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L5unseqE, @object
	.size	_ZN6__pstl9execution2v1L5unseqE, 1
_ZN6__pstl9execution2v1L5unseqE:
	.zero	1
	.section	.text._ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EED2Ev
	.type	_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EED2Ev, @function
_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB2630:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2630:
	.size	_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EED2Ev, .-_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EED2Ev
	.weak	_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EED1Ev
	.set	_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EED1Ev,_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EED2Ev
	.section	.text._ZNSt10shared_ptrI6WidgetED2Ev,"axG",@progbits,_ZNSt10shared_ptrI6WidgetED5Ev,comdat
	.align 2
	.weak	_ZNSt10shared_ptrI6WidgetED2Ev
	.type	_ZNSt10shared_ptrI6WidgetED2Ev, @function
_ZNSt10shared_ptrI6WidgetED2Ev:
.LFB2632:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2632:
	.size	_ZNSt10shared_ptrI6WidgetED2Ev, .-_ZNSt10shared_ptrI6WidgetED2Ev
	.weak	_ZNSt10shared_ptrI6WidgetED1Ev
	.set	_ZNSt10shared_ptrI6WidgetED1Ev,_ZNSt10shared_ptrI6WidgetED2Ev
	.section	.text._ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_,"axG",@progbits,_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EEC5ERKS3_,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_
	.type	_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_, @function
_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_:
.LFB2636:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1ERKS2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2636:
	.size	_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_, .-_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_
	.weak	_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EEC1ERKS3_
	.set	_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EEC1ERKS3_,_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_
	.section	.text._ZNSt10shared_ptrI6WidgetEC2ERKS1_,"axG",@progbits,_ZNSt10shared_ptrI6WidgetEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt10shared_ptrI6WidgetEC2ERKS1_
	.type	_ZNSt10shared_ptrI6WidgetEC2ERKS1_, @function
_ZNSt10shared_ptrI6WidgetEC2ERKS1_:
.LFB2638:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2638:
	.size	_ZNSt10shared_ptrI6WidgetEC2ERKS1_, .-_ZNSt10shared_ptrI6WidgetEC2ERKS1_
	.weak	_ZNSt10shared_ptrI6WidgetEC1ERKS1_
	.set	_ZNSt10shared_ptrI6WidgetEC1ERKS1_,_ZNSt10shared_ptrI6WidgetEC2ERKS1_
	.text
	.globl	main
	.type	main, @function
main:
.LFB2626:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2626
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
.LEHB0:
	call	_Z8priorityv@PLT
	movl	%eax, %ebx
	movl	$1, %edi
	call	_Znwm@PLT
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI6WidgetEC1IS0_vEEPT_
.LEHE0:
	leaq	-48(%rbp), %rax
	movl	%ebx, %esi
	movq	%rax, %rdi
.LEHB1:
	call	_Z13processWidgetSt10shared_ptrI6WidgetEi@PLT
.LEHE1:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI6WidgetED1Ev
	movl	$1, %edi
.LEHB2:
	call	_Znwm@PLT
	movq	%rax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI6WidgetEC1IS0_vEEPT_
.LEHE2:
.LEHB3:
	call	_Z8priorityv@PLT
.LEHE3:
	movl	%eax, %ebx
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI6WidgetEC1ERKS1_
	leaq	-48(%rbp), %rax
	movl	%ebx, %esi
	movq	%rax, %rdi
.LEHB4:
	call	_Z13processWidgetSt10shared_ptrI6WidgetEi@PLT
.LEHE4:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI6WidgetED1Ev
	movl	$0, %ebx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI6WidgetED1Ev
	movl	%ebx, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L10
	jmp	.L14
.L11:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI6WidgetED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.L13:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI6WidgetED1Ev
	jmp	.L9
.L12:
	endbr64
	movq	%rax, %rbx
.L9:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI6WidgetED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE5:
.L14:
	call	__stack_chk_fail@PLT
.L10:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2626:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2626:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2626-.LLSDACSB2626
.LLSDACSB2626:
	.uleb128 .LEHB0-.LFB2626
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2626
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L11-.LFB2626
	.uleb128 0
	.uleb128 .LEHB2-.LFB2626
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2626
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L12-.LFB2626
	.uleb128 0
	.uleb128 .LEHB4-.LFB2626
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L13-.LFB2626
	.uleb128 0
	.uleb128 .LEHB5-.LFB2626
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2626:
	.text
	.size	main, .-main
	.section	.text._ZNSt10shared_ptrI6WidgetEC2IS0_vEEPT_,"axG",@progbits,_ZNSt10shared_ptrI6WidgetEC5IS0_vEEPT_,comdat
	.align 2
	.weak	_ZNSt10shared_ptrI6WidgetEC2IS0_vEEPT_
	.type	_ZNSt10shared_ptrI6WidgetEC2IS0_vEEPT_, @function
_ZNSt10shared_ptrI6WidgetEC2IS0_vEEPT_:
.LFB2903:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2IS0_vEEPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2903:
	.size	_ZNSt10shared_ptrI6WidgetEC2IS0_vEEPT_, .-_ZNSt10shared_ptrI6WidgetEC2IS0_vEEPT_
	.weak	_ZNSt10shared_ptrI6WidgetEC1IS0_vEEPT_
	.set	_ZNSt10shared_ptrI6WidgetEC1IS0_vEEPT_,_ZNSt10shared_ptrI6WidgetEC2IS0_vEEPT_
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.type	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, @function
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB2906:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
.L18:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2906:
	.size	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, .-_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED1Ev
	.set	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED1Ev,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC5ERKS2_,comdat
	.align 2
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_
	.type	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_, @function
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_:
.LFB2909:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L21
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv
.L21:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2909:
	.size	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_, .-_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1ERKS2_
	.set	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1ERKS2_,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_
	.section	.text._ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2IS0_vEEPT_,"axG",@progbits,_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EEC5IS0_vEEPT_,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2IS0_vEEPT_
	.type	_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2IS0_vEEPT_, @function
_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2IS0_vEEPT_:
.LFB2993:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1IP6WidgetEET_St17integral_constantIbLb0EE
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2993:
	.size	_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2IS0_vEEPT_, .-_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2IS0_vEEPT_
	.weak	_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EEC1IS0_vEEPT_
	.set	_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EEC1IS0_vEEPT_,_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2IS0_vEEPT_
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,comdat
	.align 2
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv, @function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv:
.LFB2995:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	movl	$-1, -80(%rbp)
	movzbl	__libc_single_threaded(%rip), %eax
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L25
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movl	-72(%rbp), %eax
	jmp	.L27
.L25:
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %edx
	movq	-32(%rbp), %rax
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	nop
.L27:
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L35
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-88(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -24(%rbp)
	movl	$-1, -64(%rbp)
	movzbl	__libc_single_threaded(%rip), %eax
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L31
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movl	-60(%rbp), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	-56(%rbp), %eax
	jmp	.L33
.L31:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edx
	movq	-8(%rbp), %rax
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	nop
.L33:
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L35
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	addq	$24, %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L35:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2995:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv, .-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv,comdat
	.align 2
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv, @function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv:
.LFB2996:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movl	$1, -36(%rbp)
	movzbl	__libc_single_threaded(%rip), %eax
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L38
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L39
.L38:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	lock addl	%edx, (%rax)
	nop
.L39:
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2996:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv, .-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IP6WidgetEET_St17integral_constantIbLb0EE,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC5IP6WidgetEET_St17integral_constantIbLb0EE,comdat
	.align 2
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IP6WidgetEET_St17integral_constantIbLb0EE
	.type	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IP6WidgetEET_St17integral_constantIbLb0EE, @function
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IP6WidgetEET_St17integral_constantIbLb0EE:
.LFB3032:
	.cfi_startproc
	endbr64
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
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1IP6WidgetEET_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3032:
	.size	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IP6WidgetEET_St17integral_constantIbLb0EE, .-_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IP6WidgetEET_St17integral_constantIbLb0EE
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1IP6WidgetEET_St17integral_constantIbLb0EE
	.set	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1IP6WidgetEET_St17integral_constantIbLb0EE,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IP6WidgetEET_St17integral_constantIbLb0EE
	.section	.text._ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_,"axG",@progbits,_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_
	.type	_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_, @function
_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_:
.LFB3034:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3034:
	.size	_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_, .-_ZNSt12__shared_ptrI6WidgetLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,comdat
	.align 2
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, @function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:
.LFB3035:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L44
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L44:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3035:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, .-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IP6WidgetEET_,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC5IP6WidgetEET_,comdat
	.align 2
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IP6WidgetEET_
	.type	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IP6WidgetEET_, @function
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IP6WidgetEET_:
.LFB3078:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3078
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movl	$24, %edi
.LEHB6:
	call	_Znwm@PLT
.LEHE6:
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EEC1ES1_
	movq	-24(%rbp), %rax
	movq	%rbx, (%rax)
	jmp	.L51
.L49:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L47
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
.L47:
.LEHB7:
	call	__cxa_rethrow@PLT
.LEHE7:
.L50:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L51:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3078:
	.section	.gcc_except_table
	.align 4
.LLSDA3078:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3078-.LLSDATTD3078
.LLSDATTD3078:
	.byte	0x1
	.uleb128 .LLSDACSE3078-.LLSDACSB3078
.LLSDACSB3078:
	.uleb128 .LEHB6-.LFB3078
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L49-.LFB3078
	.uleb128 0x1
	.uleb128 .LEHB7-.LFB3078
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L50-.LFB3078
	.uleb128 0
	.uleb128 .LEHB8-.LFB3078
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE3078:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3078:
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IP6WidgetEET_,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC5IP6WidgetEET_,comdat
	.size	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IP6WidgetEET_, .-_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IP6WidgetEET_
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1IP6WidgetEET_
	.set	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1IP6WidgetEET_,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IP6WidgetEET_
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, @function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB3081:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3081:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, .-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED1Ev
	.set	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED1Ev,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev, @function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev:
.LFB3083:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED1Ev
	movq	-8(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3083:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev, .-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev
	.section	.text._ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2ES1_,"axG",@progbits,_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EEC5ES1_,comdat
	.align 2
	.weak	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2ES1_
	.type	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2ES1_, @function
_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2ES1_:
.LFB3129:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev
	leaq	16+_ZTVSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3129:
	.size	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2ES1_, .-_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2ES1_
	.weak	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EEC1ES1_
	.set	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EEC1ES1_,_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EEC2ES1_
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC5Ev,comdat
	.align 2
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev, @function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev:
.LFB3156:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 12(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3156:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev, .-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC1Ev
	.set	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC1Ev,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev
	.weak	_ZTVSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE
	.section	.data.rel.ro.local._ZTVSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE,"awG",@progbits,_ZTVSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTVSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTVSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE, 56
_ZTVSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE:
	.quad	0
	.quad	_ZTISt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EED1Ev
	.quad	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EED0Ev
	.quad	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.quad	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.quad	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.section	.text._ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.weak	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EED2Ev
	.type	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EED2Ev, @function
_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB3173:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTVSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3173:
	.size	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EED2Ev, .-_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EED2Ev
	.weak	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EED1Ev
	.set	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EED1Ev,_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EED2Ev
	.section	.text._ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EED0Ev,"axG",@progbits,_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.weak	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EED0Ev
	.type	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EED0Ev, @function
_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EED0Ev:
.LFB3175:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EED1Ev
	movq	-8(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3175:
	.size	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EED0Ev, .-_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EED0Ev
	.weak	_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.data.rel.ro._ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,"awG",@progbits,_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, 56
_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.quad	0
	.quad	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.quad	0
	.quad	0
	.quad	__cxa_pure_virtual
	.quad	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.quad	__cxa_pure_virtual
	.weak	_ZTISt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE
	.section	.data.rel.ro._ZTISt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE,"awG",@progbits,_ZTISt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTISt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTISt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE, 24
_ZTISt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.weak	_ZTSSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTSSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTSSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 32
	.type	_ZTSSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTSSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE, 59
_ZTSSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE:
	.string	"St15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE"
	.weak	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.data.rel.ro._ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,"awG",@progbits,_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, 24
_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.weak	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 32
	.type	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, 52
_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.string	"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE"
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB3192:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L60
	cmpl	$65535, -8(%rbp)
	jne	.L60
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L60:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3192:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.text._ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"axG",@progbits,_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,comdat
	.align 2
	.weak	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.type	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, @function
_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:
.LFB3193:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L63
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
.L63:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3193:
	.size	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, .-_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.section	.text._ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,"axG",@progbits,_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,comdat
	.align 2
	.weak	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.type	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, @function
_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:
.LFB3194:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L66
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EED0Ev
.L66:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3194:
	.size	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, .-_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.section	.text._ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,"axG",@progbits,_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,comdat
	.align 2
	.weak	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.type	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info, @function
_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:
.LFB3195:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3195:
	.size	_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info, .-_ZNSt15_Sp_counted_ptrIP6WidgetLN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.weak	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.data.rel.ro._ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,"awG",@progbits,_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, 16
_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.weak	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 32
	.type	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, 47
_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.string	"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE"
	.text
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB3196:
	.cfi_startproc
	endbr64
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
.LFE3196:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.weak	__cxa_pure_virtual
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
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
