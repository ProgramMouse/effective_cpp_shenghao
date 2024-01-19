	.file	"example3.cpp"
	.text
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
	.section	.text._ZN4LockC2EP5Mutex,"axG",@progbits,_ZN4LockC5EP5Mutex,comdat
	.align 2
	.weak	_ZN4LockC2EP5Mutex
	.type	_ZN4LockC2EP5Mutex, @function
_ZN4LockC2EP5Mutex:
.LFB1634:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1634
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
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EEC1IS2_vEEPS0_
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt10unique_ptrI5MutexSt14default_deleteIS0_EE3getEv
	movq	%rax, %rdi
.LEHB0:
	call	_Z4lockP5Mutex@PLT
.LEHE0:
	jmp	.L4
.L3:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
.L4:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1634:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN4LockC2EP5Mutex,"aG",@progbits,_ZN4LockC5EP5Mutex,comdat
.LLSDA1634:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1634-.LLSDACSB1634
.LLSDACSB1634:
	.uleb128 .LEHB0-.LFB1634
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L3-.LFB1634
	.uleb128 0
	.uleb128 .LEHB1-.LFB1634
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE1634:
	.section	.text._ZN4LockC2EP5Mutex,"axG",@progbits,_ZN4LockC5EP5Mutex,comdat
	.size	_ZN4LockC2EP5Mutex, .-_ZN4LockC2EP5Mutex
	.weak	_ZN4LockC1EP5Mutex
	.set	_ZN4LockC1EP5Mutex,_ZN4LockC2EP5Mutex
	.section	.text._ZN4LockC2ERKS_,"axG",@progbits,_ZN4LockC5ERKS_,comdat
	.align 2
	.weak	_ZN4LockC2ERKS_
	.type	_ZN4LockC2ERKS_, @function
_ZN4LockC2ERKS_:
.LFB1637:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1637
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt10unique_ptrI5MutexSt14default_deleteIS0_EEdeEv
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZSt11make_uniqueI5MutexJRS0_EENSt9_MakeUniqIT_E15__single_objectEDpOT0_
.LEHE2:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt10unique_ptrI5MutexSt14default_deleteIS0_EE3getEv
	movq	%rax, %rdi
.LEHB3:
	call	_Z4lockP5Mutex@PLT
.LEHE3:
	jmp	.L9
.L8:
	endbr64
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L9:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1637:
	.section	.gcc_except_table._ZN4LockC2ERKS_,"aG",@progbits,_ZN4LockC5ERKS_,comdat
.LLSDA1637:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1637-.LLSDACSB1637
.LLSDACSB1637:
	.uleb128 .LEHB2-.LFB1637
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB1637
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L8-.LFB1637
	.uleb128 0
	.uleb128 .LEHB4-.LFB1637
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE1637:
	.section	.text._ZN4LockC2ERKS_,"axG",@progbits,_ZN4LockC5ERKS_,comdat
	.size	_ZN4LockC2ERKS_, .-_ZN4LockC2ERKS_
	.weak	_ZN4LockC1ERKS_
	.set	_ZN4LockC1ERKS_,_ZN4LockC2ERKS_
	.section	.text._ZN4LockaSERKS_,"axG",@progbits,_ZN4LockaSERKS_,comdat
	.align 2
	.weak	_ZN4LockaSERKS_
	.type	_ZN4LockaSERKS_, @function
_ZN4LockaSERKS_:
.LFB1639:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt10unique_ptrI5MutexSt14default_deleteIS0_EEdeEv
	movq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt11make_uniqueI5MutexJRS0_EENSt9_MakeUniqIT_E15__single_objectEDpOT0_
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt10unique_ptrI5MutexSt14default_deleteIS0_EE3getEv
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EED1Ev
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EE5resetEPS0_
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1639:
	.size	_ZN4LockaSERKS_, .-_ZN4LockaSERKS_
	.section	.text._ZN4LockD2Ev,"axG",@progbits,_ZN4LockD5Ev,comdat
	.align 2
	.weak	_ZN4LockD2Ev
	.type	_ZN4LockD2Ev, @function
_ZN4LockD2Ev:
.LFB1642:
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
	call	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1642:
	.size	_ZN4LockD2Ev, .-_ZN4LockD2Ev
	.weak	_ZN4LockD1Ev
	.set	_ZN4LockD1Ev,_ZN4LockD2Ev
	.text
	.globl	main
	.type	main, @function
main:
.LFB1640:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1640
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
	leaq	-49(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB5:
	call	_ZN4LockC1EP5Mutex
.LEHE5:
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZN4LockC1ERKS_
.LEHE6:
	leaq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB7:
	call	_ZN4LockC1ERKS_
.LEHE7:
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB8:
	call	_ZN4LockaSERKS_
.LEHE8:
	movl	$0, %ebx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4LockD1Ev
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4LockD1Ev
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4LockD1Ev
	movl	%ebx, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L19
	jmp	.L23
.L22:
	endbr64
	movq	%rax, %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4LockD1Ev
	jmp	.L17
.L21:
	endbr64
	movq	%rax, %rbx
.L17:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4LockD1Ev
	jmp	.L18
.L20:
	endbr64
	movq	%rax, %rbx
.L18:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4LockD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB9:
	call	_Unwind_Resume@PLT
.LEHE9:
.L23:
	call	__stack_chk_fail@PLT
.L19:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1640:
	.section	.gcc_except_table,"a",@progbits
.LLSDA1640:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1640-.LLSDACSB1640
.LLSDACSB1640:
	.uleb128 .LEHB5-.LFB1640
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB1640
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L20-.LFB1640
	.uleb128 0
	.uleb128 .LEHB7-.LFB1640
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L21-.LFB1640
	.uleb128 0
	.uleb128 .LEHB8-.LFB1640
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L22-.LFB1640
	.uleb128 0
	.uleb128 .LEHB9-.LFB1640
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE1640:
	.text
	.size	main, .-main
	.section	.text._ZNSt15__uniq_ptr_dataI5MutexSt14default_deleteIS0_ELb1ELb1EECI2St15__uniq_ptr_implIS0_S2_EEPS0_,"axG",@progbits,_ZNSt15__uniq_ptr_dataI5MutexSt14default_deleteIS0_ELb1ELb1EECI5St15__uniq_ptr_implIS0_S2_EEPS0_,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_dataI5MutexSt14default_deleteIS0_ELb1ELb1EECI2St15__uniq_ptr_implIS0_S2_EEPS0_
	.type	_ZNSt15__uniq_ptr_dataI5MutexSt14default_deleteIS0_ELb1ELb1EECI2St15__uniq_ptr_implIS0_S2_EEPS0_, @function
_ZNSt15__uniq_ptr_dataI5MutexSt14default_deleteIS0_ELb1ELb1EECI2St15__uniq_ptr_implIS0_S2_EEPS0_:
.LFB1650:
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
	call	_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EEC2EPS0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1650:
	.size	_ZNSt15__uniq_ptr_dataI5MutexSt14default_deleteIS0_ELb1ELb1EECI2St15__uniq_ptr_implIS0_S2_EEPS0_, .-_ZNSt15__uniq_ptr_dataI5MutexSt14default_deleteIS0_ELb1ELb1EECI2St15__uniq_ptr_implIS0_S2_EEPS0_
	.weak	_ZNSt15__uniq_ptr_dataI5MutexSt14default_deleteIS0_ELb1ELb1EECI1St15__uniq_ptr_implIS0_S2_EEPS0_
	.set	_ZNSt15__uniq_ptr_dataI5MutexSt14default_deleteIS0_ELb1ELb1EECI1St15__uniq_ptr_implIS0_S2_EEPS0_,_ZNSt15__uniq_ptr_dataI5MutexSt14default_deleteIS0_ELb1ELb1EECI2St15__uniq_ptr_implIS0_S2_EEPS0_
	.section	.text._ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EEC2IS2_vEEPS0_,"axG",@progbits,_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EEC5IS2_vEEPS0_,comdat
	.align 2
	.weak	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EEC2IS2_vEEPS0_
	.type	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EEC2IS2_vEEPS0_, @function
_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EEC2IS2_vEEPS0_:
.LFB1652:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1652
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
	call	_ZNSt15__uniq_ptr_dataI5MutexSt14default_deleteIS0_ELb1ELb1EECI1St15__uniq_ptr_implIS0_S2_EEPS0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1652:
	.section	.gcc_except_table
.LLSDA1652:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1652-.LLSDACSB1652
.LLSDACSB1652:
.LLSDACSE1652:
	.section	.text._ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EEC2IS2_vEEPS0_,"axG",@progbits,_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EEC5IS2_vEEPS0_,comdat
	.size	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EEC2IS2_vEEPS0_, .-_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EEC2IS2_vEEPS0_
	.weak	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EEC1IS2_vEEPS0_
	.set	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EEC1IS2_vEEPS0_,_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EEC2IS2_vEEPS0_
	.section	.text._ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EED2Ev,"axG",@progbits,_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EED2Ev
	.type	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EED2Ev, @function
_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EED2Ev:
.LFB1655:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE6_M_ptrEv
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EE11get_deleterEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRP5MutexEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt14default_deleteI5MutexEclEPS0_
.L27:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1655:
	.size	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EED2Ev, .-_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EED2Ev
	.weak	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EED1Ev
	.set	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EED1Ev,_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EED2Ev
	.section	.text._ZNKSt10unique_ptrI5MutexSt14default_deleteIS0_EE3getEv,"axG",@progbits,_ZNKSt10unique_ptrI5MutexSt14default_deleteIS0_EE3getEv,comdat
	.align 2
	.weak	_ZNKSt10unique_ptrI5MutexSt14default_deleteIS0_EE3getEv
	.type	_ZNKSt10unique_ptrI5MutexSt14default_deleteIS0_EE3getEv, @function
_ZNKSt10unique_ptrI5MutexSt14default_deleteIS0_EE3getEv:
.LFB1657:
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
	call	_ZNKSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE6_M_ptrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1657:
	.size	_ZNKSt10unique_ptrI5MutexSt14default_deleteIS0_EE3getEv, .-_ZNKSt10unique_ptrI5MutexSt14default_deleteIS0_EE3getEv
	.section	.text._ZNKSt10unique_ptrI5MutexSt14default_deleteIS0_EEdeEv,"axG",@progbits,_ZNKSt10unique_ptrI5MutexSt14default_deleteIS0_EEdeEv,comdat
	.align 2
	.weak	_ZNKSt10unique_ptrI5MutexSt14default_deleteIS0_EEdeEv
	.type	_ZNKSt10unique_ptrI5MutexSt14default_deleteIS0_EEdeEv, @function
_ZNKSt10unique_ptrI5MutexSt14default_deleteIS0_EEdeEv:
.LFB1658:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	testb	%al, %al
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt10unique_ptrI5MutexSt14default_deleteIS0_EE3getEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1658:
	.size	_ZNKSt10unique_ptrI5MutexSt14default_deleteIS0_EEdeEv, .-_ZNKSt10unique_ptrI5MutexSt14default_deleteIS0_EEdeEv
	.section	.text._ZSt11make_uniqueI5MutexJRS0_EENSt9_MakeUniqIT_E15__single_objectEDpOT0_,"axG",@progbits,_ZSt11make_uniqueI5MutexJRS0_EENSt9_MakeUniqIT_E15__single_objectEDpOT0_,comdat
	.weak	_ZSt11make_uniqueI5MutexJRS0_EENSt9_MakeUniqIT_E15__single_objectEDpOT0_
	.type	_ZSt11make_uniqueI5MutexJRS0_EENSt9_MakeUniqIT_E15__single_objectEDpOT0_, @function
_ZSt11make_uniqueI5MutexJRS0_EENSt9_MakeUniqIT_E15__single_objectEDpOT0_:
.LFB1659:
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
	movq	%rax, %rdi
	call	_ZSt7forwardIR5MutexEOT_RNSt16remove_referenceIS2_E4typeE
	movl	$1, %edi
	call	_Znwm@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EEC1IS2_vEEPS0_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1659:
	.size	_ZSt11make_uniqueI5MutexJRS0_EENSt9_MakeUniqIT_E15__single_objectEDpOT0_, .-_ZSt11make_uniqueI5MutexJRS0_EENSt9_MakeUniqIT_E15__single_objectEDpOT0_
	.section	.text._ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EE5resetEPS0_,"axG",@progbits,_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EE5resetEPS0_,comdat
	.align 2
	.weak	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EE5resetEPS0_
	.type	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EE5resetEPS0_, @function
_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EE5resetEPS0_:
.LFB1660:
	.cfi_startproc
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
	movq	-24(%rbp), %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRP5MutexEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE5resetEPS0_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1660:
	.size	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EE5resetEPS0_, .-_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EE5resetEPS0_
	.section	.text._ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EEC2EPS0_,"axG",@progbits,_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EEC5EPS0_,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EEC2EPS0_
	.type	_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EEC2EPS0_, @function
_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EEC2EPS0_:
.LFB1667:
	.cfi_startproc
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
	movq	%rax, %rdi
	call	_ZNSt5tupleIJP5MutexSt14default_deleteIS0_EEEC1ILb1ELb1EEEv
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE6_M_ptrEv
	movq	%rbx, (%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1667:
	.size	_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EEC2EPS0_, .-_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EEC2EPS0_
	.weak	_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EEC1EPS0_
	.set	_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EEC1EPS0_,_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EEC2EPS0_
	.section	.text._ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE6_M_ptrEv,"axG",@progbits,_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE6_M_ptrEv,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE6_M_ptrEv
	.type	_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE6_M_ptrEv, @function
_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE6_M_ptrEv:
.LFB1669:
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
	call	_ZSt3getILm0EJP5MutexSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1669:
	.size	_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE6_M_ptrEv, .-_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE6_M_ptrEv
	.section	.text._ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EE11get_deleterEv,"axG",@progbits,_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EE11get_deleterEv,comdat
	.align 2
	.weak	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EE11get_deleterEv
	.type	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EE11get_deleterEv, @function
_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EE11get_deleterEv:
.LFB1670:
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
	call	_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE10_M_deleterEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1670:
	.size	_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EE11get_deleterEv, .-_ZNSt10unique_ptrI5MutexSt14default_deleteIS0_EE11get_deleterEv
	.section	.text._ZSt4moveIRP5MutexEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRP5MutexEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRP5MutexEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRP5MutexEONSt16remove_referenceIT_E4typeEOS4_, @function
_ZSt4moveIRP5MutexEONSt16remove_referenceIT_E4typeEOS4_:
.LFB1671:
	.cfi_startproc
	endbr64
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
.LFE1671:
	.size	_ZSt4moveIRP5MutexEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRP5MutexEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZNKSt14default_deleteI5MutexEclEPS0_,"axG",@progbits,_ZNKSt14default_deleteI5MutexEclEPS0_,comdat
	.align 2
	.weak	_ZNKSt14default_deleteI5MutexEclEPS0_
	.type	_ZNKSt14default_deleteI5MutexEclEPS0_, @function
_ZNKSt14default_deleteI5MutexEclEPS0_:
.LFB1672:
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
	testq	%rax, %rax
	je	.L45
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
.L45:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1672:
	.size	_ZNKSt14default_deleteI5MutexEclEPS0_, .-_ZNKSt14default_deleteI5MutexEclEPS0_
	.section	.text._ZNKSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE6_M_ptrEv,"axG",@progbits,_ZNKSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE6_M_ptrEv,comdat
	.align 2
	.weak	_ZNKSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE6_M_ptrEv
	.type	_ZNKSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE6_M_ptrEv, @function
_ZNKSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE6_M_ptrEv:
.LFB1673:
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
	call	_ZSt3getILm0EJP5MutexSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1673:
	.size	_ZNKSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE6_M_ptrEv, .-_ZNKSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE6_M_ptrEv
	.section	.text._ZSt7forwardIR5MutexEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIR5MutexEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIR5MutexEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIR5MutexEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIR5MutexEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB1674:
	.cfi_startproc
	endbr64
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
.LFE1674:
	.size	_ZSt7forwardIR5MutexEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIR5MutexEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE5resetEPS0_,"axG",@progbits,_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE5resetEPS0_,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE5resetEPS0_
	.type	_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE5resetEPS0_, @function
_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE5resetEPS0_:
.LFB1675:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE6_M_ptrEv
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE6_M_ptrEv
	movq	%rbx, (%rax)
	cmpq	$0, -24(%rbp)
	je	.L52
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE10_M_deleterEv
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNKSt14default_deleteI5MutexEclEPS0_
.L52:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1675:
	.size	_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE5resetEPS0_, .-_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE5resetEPS0_
	.section	.text._ZNSt5tupleIJP5MutexSt14default_deleteIS0_EEEC2ILb1ELb1EEEv,"axG",@progbits,_ZNSt5tupleIJP5MutexSt14default_deleteIS0_EEEC5ILb1ELb1EEEv,comdat
	.align 2
	.weak	_ZNSt5tupleIJP5MutexSt14default_deleteIS0_EEEC2ILb1ELb1EEEv
	.type	_ZNSt5tupleIJP5MutexSt14default_deleteIS0_EEEC2ILb1ELb1EEEv, @function
_ZNSt5tupleIJP5MutexSt14default_deleteIS0_EEEC2ILb1ELb1EEEv:
.LFB1677:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1677
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
	call	_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1677:
	.section	.gcc_except_table
.LLSDA1677:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1677-.LLSDACSB1677
.LLSDACSB1677:
.LLSDACSE1677:
	.section	.text._ZNSt5tupleIJP5MutexSt14default_deleteIS0_EEEC2ILb1ELb1EEEv,"axG",@progbits,_ZNSt5tupleIJP5MutexSt14default_deleteIS0_EEEC5ILb1ELb1EEEv,comdat
	.size	_ZNSt5tupleIJP5MutexSt14default_deleteIS0_EEEC2ILb1ELb1EEEv, .-_ZNSt5tupleIJP5MutexSt14default_deleteIS0_EEEC2ILb1ELb1EEEv
	.weak	_ZNSt5tupleIJP5MutexSt14default_deleteIS0_EEEC1ILb1ELb1EEEv
	.set	_ZNSt5tupleIJP5MutexSt14default_deleteIS0_EEEC1ILb1ELb1EEEv,_ZNSt5tupleIJP5MutexSt14default_deleteIS0_EEEC2ILb1ELb1EEEv
	.section	.text._ZSt3getILm0EJP5MutexSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_,"axG",@progbits,_ZSt3getILm0EJP5MutexSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_,comdat
	.weak	_ZSt3getILm0EJP5MutexSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	.type	_ZSt3getILm0EJP5MutexSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_, @function
_ZSt3getILm0EJP5MutexSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_:
.LFB1679:
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
	call	_ZSt12__get_helperILm0EP5MutexJSt14default_deleteIS0_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1679:
	.size	_ZSt3getILm0EJP5MutexSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_, .-_ZSt3getILm0EJP5MutexSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	.section	.text._ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE10_M_deleterEv,"axG",@progbits,_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE10_M_deleterEv,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE10_M_deleterEv
	.type	_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE10_M_deleterEv, @function
_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE10_M_deleterEv:
.LFB1680:
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
	call	_ZSt3getILm1EJP5MutexSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1680:
	.size	_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE10_M_deleterEv, .-_ZNSt15__uniq_ptr_implI5MutexSt14default_deleteIS0_EE10_M_deleterEv
	.section	.text._ZSt3getILm0EJP5MutexSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_,"axG",@progbits,_ZSt3getILm0EJP5MutexSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_,comdat
	.weak	_ZSt3getILm0EJP5MutexSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_
	.type	_ZSt3getILm0EJP5MutexSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_, @function
_ZSt3getILm0EJP5MutexSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_:
.LFB1681:
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
	call	_ZSt12__get_helperILm0EP5MutexJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1681:
	.size	_ZSt3getILm0EJP5MutexSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_, .-_ZSt3getILm0EJP5MutexSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_
	.section	.text._ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEEC2Ev,"axG",@progbits,_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEEC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEEC2Ev
	.type	_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEEC2Ev, @function
_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEEC2Ev:
.LFB1683:
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
	call	_ZNSt11_Tuple_implILm1EJSt14default_deleteI5MutexEEEC2Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EP5MutexLb0EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1683:
	.size	_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEEC2Ev, .-_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEEC2Ev
	.weak	_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEEC1Ev
	.set	_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEEC1Ev,_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEEC2Ev
	.section	.text._ZSt12__get_helperILm0EP5MutexJSt14default_deleteIS0_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0EP5MutexJSt14default_deleteIS0_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0EP5MutexJSt14default_deleteIS0_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.type	_ZSt12__get_helperILm0EP5MutexJSt14default_deleteIS0_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, @function
_ZSt12__get_helperILm0EP5MutexJSt14default_deleteIS0_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE:
.LFB1685:
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
	call	_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEE7_M_headERS4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1685:
	.size	_ZSt12__get_helperILm0EP5MutexJSt14default_deleteIS0_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, .-_ZSt12__get_helperILm0EP5MutexJSt14default_deleteIS0_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.section	.text._ZSt3getILm1EJP5MutexSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_,"axG",@progbits,_ZSt3getILm1EJP5MutexSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_,comdat
	.weak	_ZSt3getILm1EJP5MutexSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	.type	_ZSt3getILm1EJP5MutexSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_, @function
_ZSt3getILm1EJP5MutexSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_:
.LFB1686:
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
	call	_ZSt12__get_helperILm1ESt14default_deleteI5MutexEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1686:
	.size	_ZSt3getILm1EJP5MutexSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_, .-_ZSt3getILm1EJP5MutexSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	.section	.text._ZSt12__get_helperILm0EP5MutexJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0EP5MutexJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0EP5MutexJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE
	.type	_ZSt12__get_helperILm0EP5MutexJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE, @function
_ZSt12__get_helperILm0EP5MutexJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE:
.LFB1687:
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
	call	_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEE7_M_headERKS4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1687:
	.size	_ZSt12__get_helperILm0EP5MutexJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE, .-_ZSt12__get_helperILm0EP5MutexJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE
	.section	.text._ZNSt11_Tuple_implILm1EJSt14default_deleteI5MutexEEEC2Ev,"axG",@progbits,_ZNSt11_Tuple_implILm1EJSt14default_deleteI5MutexEEEC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteI5MutexEEEC2Ev
	.type	_ZNSt11_Tuple_implILm1EJSt14default_deleteI5MutexEEEC2Ev, @function
_ZNSt11_Tuple_implILm1EJSt14default_deleteI5MutexEEEC2Ev:
.LFB1689:
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
	call	_ZNSt10_Head_baseILm1ESt14default_deleteI5MutexELb1EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1689:
	.size	_ZNSt11_Tuple_implILm1EJSt14default_deleteI5MutexEEEC2Ev, .-_ZNSt11_Tuple_implILm1EJSt14default_deleteI5MutexEEEC2Ev
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteI5MutexEEEC1Ev
	.set	_ZNSt11_Tuple_implILm1EJSt14default_deleteI5MutexEEEC1Ev,_ZNSt11_Tuple_implILm1EJSt14default_deleteI5MutexEEEC2Ev
	.section	.text._ZNSt10_Head_baseILm0EP5MutexLb0EEC2Ev,"axG",@progbits,_ZNSt10_Head_baseILm0EP5MutexLb0EEC5Ev,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm0EP5MutexLb0EEC2Ev
	.type	_ZNSt10_Head_baseILm0EP5MutexLb0EEC2Ev, @function
_ZNSt10_Head_baseILm0EP5MutexLb0EEC2Ev:
.LFB1692:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1692:
	.size	_ZNSt10_Head_baseILm0EP5MutexLb0EEC2Ev, .-_ZNSt10_Head_baseILm0EP5MutexLb0EEC2Ev
	.weak	_ZNSt10_Head_baseILm0EP5MutexLb0EEC1Ev
	.set	_ZNSt10_Head_baseILm0EP5MutexLb0EEC1Ev,_ZNSt10_Head_baseILm0EP5MutexLb0EEC2Ev
	.section	.text._ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEE7_M_headERS4_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEE7_M_headERS4_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEE7_M_headERS4_
	.type	_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEE7_M_headERS4_, @function
_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEE7_M_headERS4_:
.LFB1694:
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
	call	_ZNSt10_Head_baseILm0EP5MutexLb0EE7_M_headERS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1694:
	.size	_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEE7_M_headERS4_, .-_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEE7_M_headERS4_
	.section	.text._ZSt12__get_helperILm1ESt14default_deleteI5MutexEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm1ESt14default_deleteI5MutexEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm1ESt14default_deleteI5MutexEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE
	.type	_ZSt12__get_helperILm1ESt14default_deleteI5MutexEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE, @function
_ZSt12__get_helperILm1ESt14default_deleteI5MutexEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE:
.LFB1695:
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
	call	_ZNSt11_Tuple_implILm1EJSt14default_deleteI5MutexEEE7_M_headERS3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1695:
	.size	_ZSt12__get_helperILm1ESt14default_deleteI5MutexEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE, .-_ZSt12__get_helperILm1ESt14default_deleteI5MutexEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE
	.section	.text._ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEE7_M_headERKS4_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEE7_M_headERKS4_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEE7_M_headERKS4_
	.type	_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEE7_M_headERKS4_, @function
_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEE7_M_headERKS4_:
.LFB1696:
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
	call	_ZNSt10_Head_baseILm0EP5MutexLb0EE7_M_headERKS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1696:
	.size	_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEE7_M_headERKS4_, .-_ZNSt11_Tuple_implILm0EJP5MutexSt14default_deleteIS0_EEE7_M_headERKS4_
	.section	.text._ZNSt10_Head_baseILm1ESt14default_deleteI5MutexELb1EEC2Ev,"axG",@progbits,_ZNSt10_Head_baseILm1ESt14default_deleteI5MutexELb1EEC5Ev,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteI5MutexELb1EEC2Ev
	.type	_ZNSt10_Head_baseILm1ESt14default_deleteI5MutexELb1EEC2Ev, @function
_ZNSt10_Head_baseILm1ESt14default_deleteI5MutexELb1EEC2Ev:
.LFB1698:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1698:
	.size	_ZNSt10_Head_baseILm1ESt14default_deleteI5MutexELb1EEC2Ev, .-_ZNSt10_Head_baseILm1ESt14default_deleteI5MutexELb1EEC2Ev
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteI5MutexELb1EEC1Ev
	.set	_ZNSt10_Head_baseILm1ESt14default_deleteI5MutexELb1EEC1Ev,_ZNSt10_Head_baseILm1ESt14default_deleteI5MutexELb1EEC2Ev
	.section	.text._ZNSt10_Head_baseILm0EP5MutexLb0EE7_M_headERS2_,"axG",@progbits,_ZNSt10_Head_baseILm0EP5MutexLb0EE7_M_headERS2_,comdat
	.weak	_ZNSt10_Head_baseILm0EP5MutexLb0EE7_M_headERS2_
	.type	_ZNSt10_Head_baseILm0EP5MutexLb0EE7_M_headERS2_, @function
_ZNSt10_Head_baseILm0EP5MutexLb0EE7_M_headERS2_:
.LFB1700:
	.cfi_startproc
	endbr64
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
.LFE1700:
	.size	_ZNSt10_Head_baseILm0EP5MutexLb0EE7_M_headERS2_, .-_ZNSt10_Head_baseILm0EP5MutexLb0EE7_M_headERS2_
	.section	.text._ZNSt11_Tuple_implILm1EJSt14default_deleteI5MutexEEE7_M_headERS3_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJSt14default_deleteI5MutexEEE7_M_headERS3_,comdat
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteI5MutexEEE7_M_headERS3_
	.type	_ZNSt11_Tuple_implILm1EJSt14default_deleteI5MutexEEE7_M_headERS3_, @function
_ZNSt11_Tuple_implILm1EJSt14default_deleteI5MutexEEE7_M_headERS3_:
.LFB1701:
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
	call	_ZNSt10_Head_baseILm1ESt14default_deleteI5MutexELb1EE7_M_headERS3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1701:
	.size	_ZNSt11_Tuple_implILm1EJSt14default_deleteI5MutexEEE7_M_headERS3_, .-_ZNSt11_Tuple_implILm1EJSt14default_deleteI5MutexEEE7_M_headERS3_
	.section	.text._ZNSt10_Head_baseILm0EP5MutexLb0EE7_M_headERKS2_,"axG",@progbits,_ZNSt10_Head_baseILm0EP5MutexLb0EE7_M_headERKS2_,comdat
	.weak	_ZNSt10_Head_baseILm0EP5MutexLb0EE7_M_headERKS2_
	.type	_ZNSt10_Head_baseILm0EP5MutexLb0EE7_M_headERKS2_, @function
_ZNSt10_Head_baseILm0EP5MutexLb0EE7_M_headERKS2_:
.LFB1702:
	.cfi_startproc
	endbr64
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
.LFE1702:
	.size	_ZNSt10_Head_baseILm0EP5MutexLb0EE7_M_headERKS2_, .-_ZNSt10_Head_baseILm0EP5MutexLb0EE7_M_headERKS2_
	.section	.text._ZNSt10_Head_baseILm1ESt14default_deleteI5MutexELb1EE7_M_headERS3_,"axG",@progbits,_ZNSt10_Head_baseILm1ESt14default_deleteI5MutexELb1EE7_M_headERS3_,comdat
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteI5MutexELb1EE7_M_headERS3_
	.type	_ZNSt10_Head_baseILm1ESt14default_deleteI5MutexELb1EE7_M_headERS3_, @function
_ZNSt10_Head_baseILm1ESt14default_deleteI5MutexELb1EE7_M_headERS3_:
.LFB1703:
	.cfi_startproc
	endbr64
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
.LFE1703:
	.size	_ZNSt10_Head_baseILm1ESt14default_deleteI5MutexELb1EE7_M_headERS3_, .-_ZNSt10_Head_baseILm1ESt14default_deleteI5MutexELb1EE7_M_headERS3_
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
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
