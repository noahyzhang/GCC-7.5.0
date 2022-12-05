	.file	"cxx11-ios_failure.cc"
	.text
	.section	.rodata._ZStL19piecewise_construct,"a",@progbits
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._ZNSt10error_codeC2EiRKNSt3_V214error_categoryE,"axG",@progbits,_ZNSt10error_codeC5EiRKNSt3_V214error_categoryE,comdat
	.align 2
	.weak	_ZNSt10error_codeC2EiRKNSt3_V214error_categoryE
	.type	_ZNSt10error_codeC2EiRKNSt3_V214error_categoryE, @function
_ZNSt10error_codeC2EiRKNSt3_V214error_categoryE:
.LFB988:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE988:
	.size	_ZNSt10error_codeC2EiRKNSt3_V214error_categoryE, .-_ZNSt10error_codeC2EiRKNSt3_V214error_categoryE
	.weak	_ZNSt10error_codeC1EiRKNSt3_V214error_categoryE
	.set	_ZNSt10error_codeC1EiRKNSt3_V214error_categoryE,_ZNSt10error_codeC2EiRKNSt3_V214error_categoryE
	.section	.text._ZNKSt10error_code5valueEv,"axG",@progbits,_ZNKSt10error_code5valueEv,comdat
	.align 2
	.weak	_ZNKSt10error_code5valueEv
	.type	_ZNKSt10error_code5valueEv, @function
_ZNKSt10error_code5valueEv:
.LFB994:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE994:
	.size	_ZNKSt10error_code5valueEv, .-_ZNKSt10error_code5valueEv
	.section	.text._ZNKSt10error_code8categoryEv,"axG",@progbits,_ZNKSt10error_code8categoryEv,comdat
	.align 2
	.weak	_ZNKSt10error_code8categoryEv
	.type	_ZNKSt10error_code8categoryEv, @function
_ZNKSt10error_code8categoryEv:
.LFB995:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE995:
	.size	_ZNKSt10error_code8categoryEv, .-_ZNKSt10error_code8categoryEv
	.section	.text._ZNKSt10error_code7messageB5cxx11Ev,"axG",@progbits,_ZNKSt10error_code7messageB5cxx11Ev,comdat
	.align 2
	.weak	_ZNKSt10error_code7messageB5cxx11Ev
	.type	_ZNKSt10error_code7messageB5cxx11Ev, @function
_ZNKSt10error_code7messageB5cxx11Ev:
.LFB996:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt10error_code8categoryEv@PLT
	movq	%rax, %rbx
	movq	(%rbx), %rax
	addq	$32, %rax
	movq	(%rax), %r12
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt10error_code5valueEv@PLT
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	*%r12
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE996:
	.size	_ZNKSt10error_code7messageB5cxx11Ev, .-_ZNKSt10error_code7messageB5cxx11Ev
	.section	.rodata
.LC0:
	.string	": "
	.section	.text._ZNSt12system_errorC2ESt10error_codeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZNSt12system_errorC5ESt10error_codeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align 2
	.weak	_ZNSt12system_errorC2ESt10error_codeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_ZNSt12system_errorC2ESt10error_codeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @function
_ZNSt12system_errorC2ESt10error_codeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB1029:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1029
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movl	%esi, %eax
	movq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-136(%rbp), %rbx
	leaq	-64(%rbp), %rax
	leaq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNKSt10error_code7messageB5cxx11Ev@PLT
.LEHE0:
	leaq	-96(%rbp), %rax
	movq	-144(%rbp), %rcx
	leaq	.LC0(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_@PLT
.LEHE1:
	leaq	-128(%rbp), %rax
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_@PLT
.LEHE2:
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB3:
	call	_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE3:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	_ZTVSt12system_error@GOTPCREL(%rip), %rax
	leaq	16(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rcx
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L13
	jmp	.L17
.L16:
	movq	%rax, %rbx
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L11
.L15:
	movq	%rax, %rbx
.L11:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L12
.L14:
	movq	%rax, %rbx
.L12:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L17:
	call	__stack_chk_fail@PLT
.L13:
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1029:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt12system_errorC2ESt10error_codeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"aG",@progbits,_ZNSt12system_errorC5ESt10error_codeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
.LLSDA1029:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1029-.LLSDACSB1029
.LLSDACSB1029:
	.uleb128 .LEHB0-.LFB1029
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1029
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L14-.LFB1029
	.uleb128 0
	.uleb128 .LEHB2-.LFB1029
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L15-.LFB1029
	.uleb128 0
	.uleb128 .LEHB3-.LFB1029
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L16-.LFB1029
	.uleb128 0
	.uleb128 .LEHB4-.LFB1029
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE1029:
	.section	.text._ZNSt12system_errorC2ESt10error_codeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZNSt12system_errorC5ESt10error_codeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.size	_ZNSt12system_errorC2ESt10error_codeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_ZNSt12system_errorC2ESt10error_codeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.weak	_ZNSt12system_errorC1ESt10error_codeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.set	_ZNSt12system_errorC1ESt10error_codeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,_ZNSt12system_errorC2ESt10error_codeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.text._ZNSt12system_errorC2ESt10error_codePKc,"axG",@progbits,_ZNSt12system_errorC5ESt10error_codePKc,comdat
	.align 2
	.weak	_ZNSt12system_errorC2ESt10error_codePKc
	.type	_ZNSt12system_errorC2ESt10error_codePKc, @function
_ZNSt12system_errorC2ESt10error_codePKc:
.LFB1032:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1032
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movl	%esi, %eax
	movq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-136(%rbp), %rbx
	leaq	-64(%rbp), %rax
	leaq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB5:
	call	_ZNKSt10error_code7messageB5cxx11Ev@PLT
.LEHE5:
	leaq	-96(%rbp), %rax
	leaq	-64(%rbp), %rdx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_@PLT
.LEHE6:
	leaq	-128(%rbp), %rax
	leaq	-96(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB7:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_@PLT
.LEHE7:
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB8:
	call	_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE8:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	_ZTVSt12system_error@GOTPCREL(%rip), %rax
	leaq	16(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rcx
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L22
	jmp	.L26
.L25:
	movq	%rax, %rbx
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L20
.L24:
	movq	%rax, %rbx
.L20:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L21
.L23:
	movq	%rax, %rbx
.L21:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB9:
	call	_Unwind_Resume@PLT
.LEHE9:
.L26:
	call	__stack_chk_fail@PLT
.L22:
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1032:
	.section	.gcc_except_table._ZNSt12system_errorC2ESt10error_codePKc,"aG",@progbits,_ZNSt12system_errorC5ESt10error_codePKc,comdat
.LLSDA1032:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1032-.LLSDACSB1032
.LLSDACSB1032:
	.uleb128 .LEHB5-.LFB1032
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB1032
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L23-.LFB1032
	.uleb128 0
	.uleb128 .LEHB7-.LFB1032
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L24-.LFB1032
	.uleb128 0
	.uleb128 .LEHB8-.LFB1032
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L25-.LFB1032
	.uleb128 0
	.uleb128 .LEHB9-.LFB1032
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE1032:
	.section	.text._ZNSt12system_errorC2ESt10error_codePKc,"axG",@progbits,_ZNSt12system_errorC5ESt10error_codePKc,comdat
	.size	_ZNSt12system_errorC2ESt10error_codePKc, .-_ZNSt12system_errorC2ESt10error_codePKc
	.weak	_ZNSt12system_errorC1ESt10error_codePKc
	.set	_ZNSt12system_errorC1ESt10error_codePKc,_ZNSt12system_errorC2ESt10error_codePKc
	.section	.text._ZSt15make_error_codeSt7io_errc,"axG",@progbits,_ZSt15make_error_codeSt7io_errc,comdat
	.weak	_ZSt15make_error_codeSt7io_errc
	.type	_ZSt15make_error_codeSt7io_errc, @function
_ZSt15make_error_codeSt7io_errc:
.LFB1066:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	call	_ZSt17iostream_categoryv@PLT
	movq	%rax, %rdx
	movl	-52(%rbp), %ecx
	leaq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZNSt10error_codeC1EiRKNSt3_V214error_categoryE@PLT
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movl	%ecx, %eax
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L29
	call	__stack_chk_fail@PLT
.L29:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1066:
	.size	_ZSt15make_error_codeSt7io_errc, .-_ZSt15make_error_codeSt7io_errc
	.section	.rodata
.LC1:
	.string	"iostream"
	.section	.text._ZNK12_GLOBAL__N_117io_error_category4nameEv,"ax",@progbits
	.align 2
	.type	_ZNK12_GLOBAL__N_117io_error_category4nameEv, @function
_ZNK12_GLOBAL__N_117io_error_category4nameEv:
.LFB1372:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	.LC1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1372:
	.size	_ZNK12_GLOBAL__N_117io_error_category4nameEv, .-_ZNK12_GLOBAL__N_117io_error_category4nameEv
	.section	.rodata
.LC2:
	.string	"iostream error"
.LC3:
	.string	"Unknown error"
	.section	.text._ZNK12_GLOBAL__N_117io_error_category7messageB5cxx11Ei,"ax",@progbits
	.align 2
	.type	_ZNK12_GLOBAL__N_117io_error_category7messageB5cxx11Ei, @function
_ZNK12_GLOBAL__N_117io_error_category7messageB5cxx11Ei:
.LFB1373:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1373
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	movl	-52(%rbp), %eax
	cmpl	$1, %eax
	jne	.L40
	movq	-40(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc@PLT
	jmp	.L35
.L40:
	movq	-40(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc@PLT
.LEHE10:
	nop
.L35:
	nop
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L38
	jmp	.L41
.L39:
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB11:
	call	_Unwind_Resume@PLT
.LEHE11:
.L41:
	call	__stack_chk_fail@PLT
.L38:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1373:
	.section	.gcc_except_table._ZNK12_GLOBAL__N_117io_error_category7messageB5cxx11Ei,"a",@progbits
.LLSDA1373:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1373-.LLSDACSB1373
.LLSDACSB1373:
	.uleb128 .LEHB10-.LFB1373
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L39-.LFB1373
	.uleb128 0
	.uleb128 .LEHB11-.LFB1373
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE1373:
	.section	.text._ZNK12_GLOBAL__N_117io_error_category7messageB5cxx11Ei
	.size	_ZNK12_GLOBAL__N_117io_error_category7messageB5cxx11Ei, .-_ZNK12_GLOBAL__N_117io_error_category7messageB5cxx11Ei
	.section	.data.rel.local._ZZN12_GLOBAL__N_122__io_category_instanceEvE4__ec,"aw",@progbits
	.align 8
	.type	_ZZN12_GLOBAL__N_122__io_category_instanceEvE4__ec, @object
	.size	_ZZN12_GLOBAL__N_122__io_category_instanceEvE4__ec, 8
_ZZN12_GLOBAL__N_122__io_category_instanceEvE4__ec:
	.quad	_ZTVN12_GLOBAL__N_117io_error_categoryE+16
	.section	.bss._ZGVZN12_GLOBAL__N_122__io_category_instanceEvE4__ec,"aw",@nobits
	.align 8
	.type	_ZGVZN12_GLOBAL__N_122__io_category_instanceEvE4__ec, @object
	.size	_ZGVZN12_GLOBAL__N_122__io_category_instanceEvE4__ec, 8
_ZGVZN12_GLOBAL__N_122__io_category_instanceEvE4__ec:
	.zero	8
	.section	.text._ZN12_GLOBAL__N_122__io_category_instanceEv,"ax",@progbits
	.type	_ZN12_GLOBAL__N_122__io_category_instanceEv, @function
_ZN12_GLOBAL__N_122__io_category_instanceEv:
.LFB1374:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movzbl	_ZGVZN12_GLOBAL__N_122__io_category_instanceEvE4__ec(%rip), %eax
	testb	%al, %al
	sete	%al
	testb	%al, %al
	je	.L43
	leaq	_ZGVZN12_GLOBAL__N_122__io_category_instanceEvE4__ec(%rip), %rdi
	call	__cxa_guard_acquire@PLT
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L43
	leaq	_ZGVZN12_GLOBAL__N_122__io_category_instanceEvE4__ec(%rip), %rdi
	call	__cxa_guard_release@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZZN12_GLOBAL__N_122__io_category_instanceEvE4__ec(%rip), %rsi
	leaq	_ZN12_GLOBAL__N_117io_error_categoryD1Ev(%rip), %rdi
	call	__cxa_atexit@PLT
.L43:
	leaq	_ZZN12_GLOBAL__N_122__io_category_instanceEvE4__ec(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1374:
	.size	_ZN12_GLOBAL__N_122__io_category_instanceEv, .-_ZN12_GLOBAL__N_122__io_category_instanceEv
	.section	.text._ZSt17iostream_categoryv,"ax",@progbits
	.globl	_ZSt17iostream_categoryv
	.type	_ZSt17iostream_categoryv, @function
_ZSt17iostream_categoryv:
.LFB1381:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	_ZN12_GLOBAL__N_122__io_category_instanceEv
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1381:
	.size	_ZSt17iostream_categoryv, .-_ZSt17iostream_categoryv
	.section	.text._ZNSt8ios_base7failureB5cxx11C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"ax",@progbits
	.align 2
	.globl	_ZNSt8ios_base7failureB5cxx11C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_ZNSt8ios_base7failureB5cxx11C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @function
_ZNSt8ios_base7failureB5cxx11C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB1383:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	leaq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt10error_codeC1ISt7io_errcvEET_@PLT
	movq	-64(%rbp), %rcx
	movl	-48(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdx
	movq	%rbx, %rdi
	call	_ZNSt12system_errorC2ESt10error_codeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
	movq	_ZTVNSt8ios_base7failureB5cxx11E@GOTPCREL(%rip), %rax
	leaq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L48
	call	__stack_chk_fail@PLT
.L48:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1383:
	.size	_ZNSt8ios_base7failureB5cxx11C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_ZNSt8ios_base7failureB5cxx11C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.globl	_ZNSt8ios_base7failureB5cxx11C1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.set	_ZNSt8ios_base7failureB5cxx11C1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,_ZNSt8ios_base7failureB5cxx11C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.text._ZNSt8ios_base7failureB5cxx11C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10error_code,"ax",@progbits
	.align 2
	.globl	_ZNSt8ios_base7failureB5cxx11C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10error_code
	.type	_ZNSt8ios_base7failureB5cxx11C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10error_code, @function
_ZNSt8ios_base7failureB5cxx11C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10error_code:
.LFB1386:
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
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdx
	call	_ZNSt12system_errorC2ESt10error_codeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
	movq	_ZTVNSt8ios_base7failureB5cxx11E@GOTPCREL(%rip), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1386:
	.size	_ZNSt8ios_base7failureB5cxx11C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10error_code, .-_ZNSt8ios_base7failureB5cxx11C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10error_code
	.globl	_ZNSt8ios_base7failureB5cxx11C1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10error_code
	.set	_ZNSt8ios_base7failureB5cxx11C1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10error_code,_ZNSt8ios_base7failureB5cxx11C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10error_code
	.section	.text._ZNSt8ios_base7failureB5cxx11C2EPKcRKSt10error_code,"ax",@progbits
	.align 2
	.globl	_ZNSt8ios_base7failureB5cxx11C2EPKcRKSt10error_code
	.type	_ZNSt8ios_base7failureB5cxx11C2EPKcRKSt10error_code, @function
_ZNSt8ios_base7failureB5cxx11C2EPKcRKSt10error_code:
.LFB1389:
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
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdx
	call	_ZNSt12system_errorC2ESt10error_codePKc@PLT
	movq	_ZTVNSt8ios_base7failureB5cxx11E@GOTPCREL(%rip), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1389:
	.size	_ZNSt8ios_base7failureB5cxx11C2EPKcRKSt10error_code, .-_ZNSt8ios_base7failureB5cxx11C2EPKcRKSt10error_code
	.globl	_ZNSt8ios_base7failureB5cxx11C1EPKcRKSt10error_code
	.set	_ZNSt8ios_base7failureB5cxx11C1EPKcRKSt10error_code,_ZNSt8ios_base7failureB5cxx11C2EPKcRKSt10error_code
	.section	.text._ZNSt8ios_base7failureB5cxx11D2Ev,"ax",@progbits
	.align 2
	.globl	_ZNSt8ios_base7failureB5cxx11D2Ev
	.type	_ZNSt8ios_base7failureB5cxx11D2Ev, @function
_ZNSt8ios_base7failureB5cxx11D2Ev:
.LFB1392:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	_ZTVNSt8ios_base7failureB5cxx11E@GOTPCREL(%rip), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12system_errorD2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1392:
	.size	_ZNSt8ios_base7failureB5cxx11D2Ev, .-_ZNSt8ios_base7failureB5cxx11D2Ev
	.globl	_ZNSt8ios_base7failureB5cxx11D1Ev
	.set	_ZNSt8ios_base7failureB5cxx11D1Ev,_ZNSt8ios_base7failureB5cxx11D2Ev
	.section	.text._ZNSt8ios_base7failureB5cxx11D0Ev,"ax",@progbits
	.align 2
	.globl	_ZNSt8ios_base7failureB5cxx11D0Ev
	.type	_ZNSt8ios_base7failureB5cxx11D0Ev, @function
_ZNSt8ios_base7failureB5cxx11D0Ev:
.LFB1394:
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
	call	_ZNSt8ios_base7failureB5cxx11D1Ev@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1394:
	.size	_ZNSt8ios_base7failureB5cxx11D0Ev, .-_ZNSt8ios_base7failureB5cxx11D0Ev
	.section	.text._ZNKSt8ios_base7failureB5cxx114whatEv,"ax",@progbits
	.align 2
	.globl	_ZNKSt8ios_base7failureB5cxx114whatEv
	.type	_ZNKSt8ios_base7failureB5cxx114whatEv, @function
_ZNKSt8ios_base7failureB5cxx114whatEv:
.LFB1395:
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
	call	_ZNKSt13runtime_error4whatEv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1395:
	.size	_ZNKSt8ios_base7failureB5cxx114whatEv, .-_ZNKSt8ios_base7failureB5cxx114whatEv
	.section	.text._ZNSt13__ios_failureC2EPKc,"axG",@progbits,_ZNSt13__ios_failureC5EPKc,comdat
	.align 2
	.weak	_ZNSt13__ios_failureC2EPKc
	.type	_ZNSt13__ios_failureC2EPKc, @function
_ZNSt13__ios_failureC2EPKc:
.LFB1397:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1397
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	leaq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt10error_codeC1ISt7io_errcvEET_@PLT
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB12:
	call	_ZNSt8ios_base7failureB5cxx11C2EPKcRKSt10error_code@PLT
.LEHE12:
	movq	_ZTVSt13__ios_failure@GOTPCREL(%rip), %rax
	leaq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt13runtime_error4whatEv@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$32, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB13:
	call	_ZSt23__construct_ios_failurePvPKc@PLT
.LEHE13:
	jmp	.L59
.L58:
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8ios_base7failureB5cxx11D2Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB14:
	call	_Unwind_Resume@PLT
.LEHE14:
.L59:
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L57
	call	__stack_chk_fail@PLT
.L57:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1397:
	.section	.gcc_except_table._ZNSt13__ios_failureC2EPKc,"aG",@progbits,_ZNSt13__ios_failureC5EPKc,comdat
.LLSDA1397:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1397-.LLSDACSB1397
.LLSDACSB1397:
	.uleb128 .LEHB12-.LFB1397
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB1397
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L58-.LFB1397
	.uleb128 0
	.uleb128 .LEHB14-.LFB1397
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE1397:
	.section	.text._ZNSt13__ios_failureC2EPKc,"axG",@progbits,_ZNSt13__ios_failureC5EPKc,comdat
	.size	_ZNSt13__ios_failureC2EPKc, .-_ZNSt13__ios_failureC2EPKc
	.weak	_ZNSt13__ios_failureC1EPKc
	.set	_ZNSt13__ios_failureC1EPKc,_ZNSt13__ios_failureC2EPKc
	.section	.text._ZNSt13__ios_failureD2Ev,"axG",@progbits,_ZNSt13__ios_failureD5Ev,comdat
	.align 2
	.weak	_ZNSt13__ios_failureD2Ev
	.type	_ZNSt13__ios_failureD2Ev, @function
_ZNSt13__ios_failureD2Ev:
.LFB1400:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1400
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	_ZTVSt13__ios_failure@GOTPCREL(%rip), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZSt21__destroy_ios_failurePv@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8ios_base7failureB5cxx11D2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1400:
	.section	.gcc_except_table._ZNSt13__ios_failureD2Ev,"aG",@progbits,_ZNSt13__ios_failureD5Ev,comdat
.LLSDA1400:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1400-.LLSDACSB1400
.LLSDACSB1400:
.LLSDACSE1400:
	.section	.text._ZNSt13__ios_failureD2Ev,"axG",@progbits,_ZNSt13__ios_failureD5Ev,comdat
	.size	_ZNSt13__ios_failureD2Ev, .-_ZNSt13__ios_failureD2Ev
	.weak	_ZNSt13__ios_failureD1Ev
	.set	_ZNSt13__ios_failureD1Ev,_ZNSt13__ios_failureD2Ev
	.section	.text._ZNSt13__ios_failureD0Ev,"axG",@progbits,_ZNSt13__ios_failureD5Ev,comdat
	.align 2
	.weak	_ZNSt13__ios_failureD0Ev
	.type	_ZNSt13__ios_failureD0Ev, @function
_ZNSt13__ios_failureD0Ev:
.LFB1402:
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
	call	_ZNSt13__ios_failureD1Ev@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1402:
	.size	_ZNSt13__ios_failureD0Ev, .-_ZNSt13__ios_failureD0Ev
	.section	.text._ZNSt19__iosfail_type_infoD2Ev,"ax",@progbits
	.align 2
	.globl	_ZNSt19__iosfail_type_infoD2Ev
	.type	_ZNSt19__iosfail_type_infoD2Ev, @function
_ZNSt19__iosfail_type_infoD2Ev:
.LFB1404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	_ZTVSt19__iosfail_type_info@GOTPCREL(%rip), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10__cxxabiv120__si_class_type_infoD2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1404:
	.size	_ZNSt19__iosfail_type_infoD2Ev, .-_ZNSt19__iosfail_type_infoD2Ev
	.globl	_ZNSt19__iosfail_type_infoD1Ev
	.set	_ZNSt19__iosfail_type_infoD1Ev,_ZNSt19__iosfail_type_infoD2Ev
	.section	.text._ZNSt19__iosfail_type_infoD0Ev,"ax",@progbits
	.align 2
	.globl	_ZNSt19__iosfail_type_infoD0Ev
	.type	_ZNSt19__iosfail_type_infoD0Ev, @function
_ZNSt19__iosfail_type_infoD0Ev:
.LFB1406:
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
	call	_ZNSt19__iosfail_type_infoD1Ev@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1406:
	.size	_ZNSt19__iosfail_type_infoD0Ev, .-_ZNSt19__iosfail_type_infoD0Ev
	.section	.text._ZNKSt19__iosfail_type_info11__do_upcastEPKN10__cxxabiv117__class_type_infoEPPv,"ax",@progbits
	.align 2
	.globl	_ZNKSt19__iosfail_type_info11__do_upcastEPKN10__cxxabiv117__class_type_infoEPPv
	.type	_ZNKSt19__iosfail_type_info11__do_upcastEPKN10__cxxabiv117__class_type_infoEPPv, @function
_ZNKSt19__iosfail_type_info11__do_upcastEPKN10__cxxabiv117__class_type_infoEPPv:
.LFB1407:
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
	call	_ZSt24__is_ios_failure_handlerPKN10__cxxabiv117__class_type_infoE@PLT
	testb	%al, %al
	je	.L65
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L66
.L65:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv@PLT
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1407:
	.size	_ZNKSt19__iosfail_type_info11__do_upcastEPKN10__cxxabiv117__class_type_infoEPPv, .-_ZNKSt19__iosfail_type_info11__do_upcastEPKN10__cxxabiv117__class_type_infoEPPv
	.section	.text._ZSt19__throw_ios_failurePKc,"ax",@progbits
	.globl	_ZSt19__throw_ios_failurePKc
	.type	_ZSt19__throw_ios_failurePKc, @function
_ZSt19__throw_ios_failurePKc:
.LFB1408:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1408
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movl	$48, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB15:
	call	_ZNSt13__ios_failureC1EPKc@PLT
.LEHE15:
	movq	_ZNSt13__ios_failureD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	_ZTISt13__ios_failure@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB16:
	call	__cxa_throw@PLT
.L69:
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE16:
	.cfi_endproc
.LFE1408:
	.section	.gcc_except_table._ZSt19__throw_ios_failurePKc,"a",@progbits
.LLSDA1408:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1408-.LLSDACSB1408
.LLSDACSB1408:
	.uleb128 .LEHB15-.LFB1408
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L69-.LFB1408
	.uleb128 0
	.uleb128 .LEHB16-.LFB1408
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSE1408:
	.section	.text._ZSt19__throw_ios_failurePKc
	.size	_ZSt19__throw_ios_failurePKc, .-_ZSt19__throw_ios_failurePKc
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,comdat
	.weak	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
	.type	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_, @function
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_:
.LFB1595:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1595
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB17:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.LEHE17:
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB18:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc@PLT
.LEHE18:
	jmp	.L75
.L74:
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB19:
	call	_Unwind_Resume@PLT
.LEHE19:
.L75:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L73
	call	__stack_chk_fail@PLT
.L73:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1595:
	.section	.gcc_except_table._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,"aG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,comdat
.LLSDA1595:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1595-.LLSDACSB1595
.LLSDACSB1595:
	.uleb128 .LEHB17-.LFB1595
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB1595
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L74-.LFB1595
	.uleb128 0
	.uleb128 .LEHB19-.LFB1595
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE1595:
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,comdat
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_, .-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_,comdat
	.weak	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
	.type	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_, @function
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:
.LFB1596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	addq	%rbx, %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv@PLT
	cmpq	%rax, -24(%rbp)
	jbe	.L77
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv@PLT
	cmpq	%rax, -24(%rbp)
	ja	.L77
	movl	$1, %eax
	jmp	.L78
.L77:
	movl	$0, %eax
.L78:
	movb	%al, -25(%rbp)
	cmpb	$0, -25(%rbp)
	je	.L79
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_@PLT
	movq	%rax, %rdi
	call	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_@PLT
	movq	%rax, %rdx
	jmp	.L80
.L79:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_@PLT
	movq	%rax, %rdi
	call	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_@PLT
	movq	%rax, %rdx
.L80:
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@PLT
	movq	-40(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1596:
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_, .-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_,comdat
	.weak	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
	.type	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_, @function
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_:
.LFB1597:
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
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc@PLT
	movq	%rax, %rdi
	call	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1597:
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_, .-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
	.section	.text._ZNSt10error_codeC2ISt7io_errcvEET_,"axG",@progbits,_ZNSt10error_codeC5ISt7io_errcvEET_,comdat
	.align 2
	.weak	_ZNSt10error_codeC2ISt7io_errcvEET_
	.type	_ZNSt10error_codeC2ISt7io_errcvEET_, @function
_ZNSt10error_codeC2ISt7io_errcvEET_:
.LFB1605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	_ZSt15make_error_codeSt7io_errc@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1605:
	.size	_ZNSt10error_codeC2ISt7io_errcvEET_, .-_ZNSt10error_codeC2ISt7io_errcvEET_
	.weak	_ZNSt10error_codeC1ISt7io_errcvEET_
	.set	_ZNSt10error_codeC1ISt7io_errcvEET_,_ZNSt10error_codeC2ISt7io_errcvEET_
	.section	.text._ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_,"axG",@progbits,_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_,comdat
	.weak	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.type	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_, @function
_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_:
.LFB1660:
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
.LFE1660:
	.size	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_, .-_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.weak	_ZTVSt19__iosfail_type_info
	.section	.data.rel.ro._ZTVSt19__iosfail_type_info,"awG",@progbits,_ZTVSt19__iosfail_type_info,comdat
	.align 8
	.type	_ZTVSt19__iosfail_type_info, @object
	.size	_ZTVSt19__iosfail_type_info, 88
_ZTVSt19__iosfail_type_info:
	.quad	0
	.quad	_ZTISt19__iosfail_type_info
	.quad	_ZNSt19__iosfail_type_infoD1Ev
	.quad	_ZNSt19__iosfail_type_infoD0Ev
	.quad	_ZNKSt9type_info14__is_pointer_pEv
	.quad	_ZNKSt9type_info15__is_function_pEv
	.quad	_ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj
	.quad	_ZNKSt19__iosfail_type_info11__do_upcastEPKN10__cxxabiv117__class_type_infoEPPv
	.quad	_ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE
	.quad	_ZNK10__cxxabiv120__si_class_type_info12__do_dyncastElNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE
	.quad	_ZNK10__cxxabiv120__si_class_type_info20__do_find_public_srcElPKvPKNS_17__class_type_infoES2_
	.weak	_ZTVSt13__ios_failure
	.section	.data.rel.ro._ZTVSt13__ios_failure,"awG",@progbits,_ZTVSt13__ios_failure,comdat
	.align 8
	.type	_ZTVSt13__ios_failure, @object
	.size	_ZTVSt13__ios_failure, 40
_ZTVSt13__ios_failure:
	.quad	0
	.quad	_ZTISt13__ios_failure
	.quad	_ZNSt13__ios_failureD1Ev
	.quad	_ZNSt13__ios_failureD0Ev
	.quad	_ZNKSt8ios_base7failureB5cxx114whatEv
	.weak	_ZTVNSt8ios_base7failureB5cxx11E
	.section	.data.rel.ro._ZTVNSt8ios_base7failureB5cxx11E,"awG",@progbits,_ZTVNSt8ios_base7failureB5cxx11E,comdat
	.align 8
	.type	_ZTVNSt8ios_base7failureB5cxx11E, @object
	.size	_ZTVNSt8ios_base7failureB5cxx11E, 40
_ZTVNSt8ios_base7failureB5cxx11E:
	.quad	0
	.quad	_ZTINSt8ios_base7failureB5cxx11E
	.quad	_ZNSt8ios_base7failureB5cxx11D1Ev
	.quad	_ZNSt8ios_base7failureB5cxx11D0Ev
	.quad	_ZNKSt8ios_base7failureB5cxx114whatEv
	.section	.data.rel.ro._ZTVN12_GLOBAL__N_117io_error_categoryE,"aw",@progbits
	.align 8
	.type	_ZTVN12_GLOBAL__N_117io_error_categoryE, @object
	.size	_ZTVN12_GLOBAL__N_117io_error_categoryE, 80
_ZTVN12_GLOBAL__N_117io_error_categoryE:
	.quad	0
	.quad	_ZTIN12_GLOBAL__N_117io_error_categoryE
	.quad	_ZN12_GLOBAL__N_117io_error_categoryD1Ev
	.quad	_ZN12_GLOBAL__N_117io_error_categoryD0Ev
	.quad	_ZNK12_GLOBAL__N_117io_error_category4nameEv
	.quad	_ZNKSt3_V214error_category10_M_messageB5cxx11Ei
	.quad	_ZNK12_GLOBAL__N_117io_error_category7messageB5cxx11Ei
	.quad	_ZNKSt3_V214error_category23default_error_conditionEi
	.quad	_ZNKSt3_V214error_category10equivalentEiRKSt15error_condition
	.quad	_ZNKSt3_V214error_category10equivalentERKSt10error_codei
	.section	.text._ZN12_GLOBAL__N_117io_error_categoryD2Ev,"ax",@progbits
	.align 2
	.type	_ZN12_GLOBAL__N_117io_error_categoryD2Ev, @function
_ZN12_GLOBAL__N_117io_error_categoryD2Ev:
.LFB1743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTVN12_GLOBAL__N_117io_error_categoryE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt3_V214error_categoryD2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1743:
	.size	_ZN12_GLOBAL__N_117io_error_categoryD2Ev, .-_ZN12_GLOBAL__N_117io_error_categoryD2Ev
	.set	_ZN12_GLOBAL__N_117io_error_categoryD1Ev,_ZN12_GLOBAL__N_117io_error_categoryD2Ev
	.section	.text._ZN12_GLOBAL__N_117io_error_categoryD0Ev,"ax",@progbits
	.align 2
	.type	_ZN12_GLOBAL__N_117io_error_categoryD0Ev, @function
_ZN12_GLOBAL__N_117io_error_categoryD0Ev:
.LFB1745:
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
	call	_ZN12_GLOBAL__N_117io_error_categoryD1Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1745:
	.size	_ZN12_GLOBAL__N_117io_error_categoryD0Ev, .-_ZN12_GLOBAL__N_117io_error_categoryD0Ev
	.weak	_ZTISt19__iosfail_type_info
	.section	.data.rel.ro._ZTISt19__iosfail_type_info,"awG",@progbits,_ZTISt19__iosfail_type_info,comdat
	.align 8
	.type	_ZTISt19__iosfail_type_info, @object
	.size	_ZTISt19__iosfail_type_info, 40
_ZTISt19__iosfail_type_info:
	.quad	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.quad	_ZTSSt19__iosfail_type_info
	.long	0
	.long	1
	.quad	_ZTIN10__cxxabiv120__si_class_type_infoE
	.quad	0
	.weak	_ZTSSt19__iosfail_type_info
	.section	.rodata._ZTSSt19__iosfail_type_info,"aG",@progbits,_ZTSSt19__iosfail_type_info,comdat
	.align 16
	.type	_ZTSSt19__iosfail_type_info, @object
	.size	_ZTSSt19__iosfail_type_info, 24
_ZTSSt19__iosfail_type_info:
	.string	"St19__iosfail_type_info"
	.weak	_ZTISt13__ios_failure
	.section	.data.rel.ro._ZTISt13__ios_failure,"awG",@progbits,_ZTISt13__ios_failure,comdat
	.align 8
	.type	_ZTISt13__ios_failure, @object
	.size	_ZTISt13__ios_failure, 24
_ZTISt13__ios_failure:
	.quad	_ZTVSt19__iosfail_type_info+16
	.quad	_ZTSSt13__ios_failure
	.quad	_ZTINSt8ios_base7failureB5cxx11E
	.weak	_ZTSSt13__ios_failure
	.section	.rodata._ZTSSt13__ios_failure,"aG",@progbits,_ZTSSt13__ios_failure,comdat
	.align 16
	.type	_ZTSSt13__ios_failure, @object
	.size	_ZTSSt13__ios_failure, 18
_ZTSSt13__ios_failure:
	.string	"St13__ios_failure"
	.section	.rodata._ZTSN12_GLOBAL__N_117io_error_categoryE,"a",@progbits
	.align 32
	.type	_ZTSN12_GLOBAL__N_117io_error_categoryE, @object
	.size	_ZTSN12_GLOBAL__N_117io_error_categoryE, 37
_ZTSN12_GLOBAL__N_117io_error_categoryE:
	.string	"*N12_GLOBAL__N_117io_error_categoryE"
	.section	.data.rel.ro._ZTIN12_GLOBAL__N_117io_error_categoryE,"aw",@progbits
	.align 8
	.type	_ZTIN12_GLOBAL__N_117io_error_categoryE, @object
	.size	_ZTIN12_GLOBAL__N_117io_error_categoryE, 24
_ZTIN12_GLOBAL__N_117io_error_categoryE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN12_GLOBAL__N_117io_error_categoryE
	.quad	_ZTINSt3_V214error_categoryE
	.weak	_ZTINSt8ios_base7failureB5cxx11E
	.section	.data.rel.ro._ZTINSt8ios_base7failureB5cxx11E,"awG",@progbits,_ZTINSt8ios_base7failureB5cxx11E,comdat
	.align 8
	.type	_ZTINSt8ios_base7failureB5cxx11E, @object
	.size	_ZTINSt8ios_base7failureB5cxx11E, 24
_ZTINSt8ios_base7failureB5cxx11E:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt8ios_base7failureB5cxx11E
	.quad	_ZTISt12system_error
	.weak	_ZTSNSt8ios_base7failureB5cxx11E
	.section	.rodata._ZTSNSt8ios_base7failureB5cxx11E,"aG",@progbits,_ZTSNSt8ios_base7failureB5cxx11E,comdat
	.align 16
	.type	_ZTSNSt8ios_base7failureB5cxx11E, @object
	.size	_ZTSNSt8ios_base7failureB5cxx11E, 29
_ZTSNSt8ios_base7failureB5cxx11E:
	.string	"NSt8ios_base7failureB5cxx11E"
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
