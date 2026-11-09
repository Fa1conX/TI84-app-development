	.section	.text,"ax",@progbits
	.assume	ADL = 1
	.file	"llvm-link"
	.section	.text._bjt_fixed_bias_ib,"ax",@progbits
	.globl	_bjt_fixed_bias_ib              ; -- Begin function bjt_fixed_bias_ib
	.type	_bjt_fixed_bias_ib,@function
_bjt_fixed_bias_ib:                     ; @bjt_fixed_bias_ib
; %bb.0:
	call	__frameset0
	ld	bc, (ix + 6)
	ld	hl, (ix + 12)
	ld	iy, (ix + 18)
	ld	d, (ix + 21)
	ld	a, (ix + 9)
	ld	e, (ix + 15)
	call	__fsub
	lea	hl, iy + 0
	ld	e, d
	call	__fdiv
	push	bc
	pop	hl
	ld	e, a
	pop	ix
	ret
	.local	.Lfunc_end0
.Lfunc_end0:
	.size	_bjt_fixed_bias_ib, .Lfunc_end0-_bjt_fixed_bias_ib
                                        ; -- End function
	.section	.text._bjt_collector_feedback_ib,"ax",@progbits
	.globl	_bjt_collector_feedback_ib      ; -- Begin function bjt_collector_feedback_ib
	.type	_bjt_collector_feedback_ib,@function
_bjt_collector_feedback_ib:             ; @bjt_collector_feedback_ib
; %bb.0:
	call	__frameset0
	ld	bc, (ix + 6)
	ld	hl, (ix + 12)
	ld	a, (ix + 9)
	ld	e, (ix + 15)
	call	__fsub
	push	bc
	pop	iy
	ld	d, a
	ld	bc, (ix + 24)
	ld	a, (ix + 27)
	ld	hl, -8388608
	ld	e, 63
	call	__fadd
	ld	hl, (ix + 30)
	ld	e, (ix + 33)
	call	__fmul
	ld	hl, (ix + 18)
	ld	e, (ix + 21)
	call	__fadd
	push	bc
	pop	hl
	ld	e, a
	lea	bc, iy + 0
	ld	a, d
	call	__fdiv
	push	bc
	pop	hl
	ld	e, a
	pop	ix
	ret
	.local	.Lfunc_end1
.Lfunc_end1:
	.size	_bjt_collector_feedback_ib, .Lfunc_end1-_bjt_collector_feedback_ib
                                        ; -- End function
	.section	.text._bjt_voltage_divider_thevenin,"ax",@progbits
	.globl	_bjt_voltage_divider_thevenin   ; -- Begin function bjt_voltage_divider_thevenin
	.type	_bjt_voltage_divider_thevenin,@function
_bjt_voltage_divider_thevenin:          ; @bjt_voltage_divider_thevenin
; %bb.0:
	call	__frameset0
	ld	bc, (ix + 6)
	ld	hl, (ix + 18)
	ld	e, (ix + 21)
	ld	a, (ix + 9)
	call	__fmul
	push	bc
	pop	iy
	ld	d, a
	ld	bc, (ix + 12)
	ld	a, (ix + 15)
	call	__fadd
	push	bc
	pop	hl
	ld	e, a
	lea	bc, iy + 0
	ld	a, d
	call	__fdiv
	push	bc
	pop	hl
	ld	e, a
	pop	ix
	ret
	.local	.Lfunc_end2
.Lfunc_end2:
	.size	_bjt_voltage_divider_thevenin, .Lfunc_end2-_bjt_voltage_divider_thevenin
                                        ; -- End function
	.section	.text._bjt_voltage_divider_ib,"ax",@progbits
	.globl	_bjt_voltage_divider_ib         ; -- Begin function bjt_voltage_divider_ib
	.type	_bjt_voltage_divider_ib,@function
_bjt_voltage_divider_ib:                ; @bjt_voltage_divider_ib
; %bb.0:
	call	__frameset0
	ld	bc, (ix + 6)
	ld	hl, (ix + 12)
	ld	a, (ix + 9)
	ld	e, (ix + 15)
	call	__fsub
	push	bc
	pop	iy
	ld	d, a
	ld	bc, (ix + 24)
	ld	a, (ix + 27)
	ld	hl, -8388608
	ld	e, 63
	call	__fadd
	ld	hl, (ix + 30)
	ld	e, (ix + 33)
	call	__fmul
	ld	hl, (ix + 18)
	ld	e, (ix + 21)
	call	__fadd
	push	bc
	pop	hl
	ld	e, a
	lea	bc, iy + 0
	ld	a, d
	call	__fdiv
	push	bc
	pop	hl
	ld	e, a
	pop	ix
	ret
	.local	.Lfunc_end3
.Lfunc_end3:
	.size	_bjt_voltage_divider_ib, .Lfunc_end3-_bjt_voltage_divider_ib
                                        ; -- End function
	.section	.text._bjt_operating_point,"ax",@progbits
	.globl	_bjt_operating_point            ; -- Begin function bjt_operating_point
	.type	_bjt_operating_point,@function
_bjt_operating_point:                   ; @bjt_operating_point
; %bb.0:
	ld	hl, -24
	call	__frameset
	ld	iy, (ix + 9)
	ld	hl, (ix + 15)
	ld	e, (ix + 18)
	ld	bc, (ix + 39)
                                        ; kill: def $e killed $e def $ude
	push	de
	push	hl
	ld	l, (ix + 42)
	push	hl
	push	bc
	ld	l, (ix + 12)
	push	hl
	push	iy
	call	_bjt_fixed_bias_ib
	push	hl
	pop	iy
	ld	d, e
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	lea	bc, iy + 0
	ld	(ix - 11), iy
	ld	a, d
	ld	(ix - 12), d
	ld	hl, (ix + 33)
	ld	e, (ix + 36)
	call	__fmul
	ld	(ix - 3), bc
	ld	(ix - 4), a                     ; 1-byte Folded Spill
	ld	bc, (ix + 33)
	ld	a, (ix + 36)
	ld	hl, -8388608
	ld	e, 63
	call	__fadd
	lea	hl, iy + 0
	ld	e, d
	call	__fmul
	ld	(ix - 7), bc
	ld	(ix - 8), a                     ; 1-byte Folded Spill
	ld	bc, (ix - 3)
	ld	a, (ix - 4)                     ; 1-byte Folded Reload
	call	__fneg
	ld	hl, (ix + 21)
	ld	e, (ix + 24)
	call	__fmul
	ld	hl, (ix + 9)
	ld	e, (ix + 12)
	call	__fadd
	push	bc
	pop	iy
	ld	d, a
	ld	bc, (ix - 7)
	ld	a, (ix - 8)                     ; 1-byte Folded Reload
	ld	hl, (ix + 27)
	ld	e, (ix + 30)
	call	__fmul
	push	bc
	pop	hl
	ld	e, a
	ld	(ix - 19), iy
	lea	bc, iy + 0
	ld	(ix - 20), d                    ; 1-byte Folded Spill
	ld	a, d
	ld	(ix - 23), hl
	ld	(ix - 24), e                    ; 1-byte Folded Spill
	call	__fsub
	ld	(ix - 15), bc
	ld	(ix - 16), a                    ; 1-byte Folded Spill
	ld	iy, (ix + 6)
	ld	bc, (ix - 11)
	ld	(iy), bc
	ld	d, (ix - 12)                    ; 1-byte Folded Reload
	ld	(iy + 3), d
	ld	hl, (ix + 39)
	ld	(iy + 12), hl
	ld	a, (ix + 42)
	ld	(iy + 15), a
	or	a, a
	sbc	hl, hl
	ld	e, h
	ld	a, d
	call	__fcmp
	jp	p, .LBB4_3
; %bb.1:
	ld	hl, (ix + 45)
	push	hl
	pop	iy
	ld	e, (ix + 48)
	ld	bc, (ix - 15)
	ld	d, (ix - 16)                    ; 1-byte Folded Reload
	ld	a, d
	call	__fcmp
	jp	p, .LBB4_4
; %bb.2:
	ld	iy, (ix + 6)
	ld	bc, (ix - 3)
	ld	(iy + 4), bc
	ld	a, (ix - 4)                     ; 1-byte Folded Reload
	ld	(iy + 7), a
	ld	hl, (ix - 7)
	ld	(iy + 8), hl
	ld	l, (ix - 8)
	ld	(iy + 11), l
	ld	hl, (ix - 19)
	ld	(iy + 16), hl
	ld	l, (ix - 20)
	ld	(iy + 19), l
	ld	hl, (ix - 23)
	ld	(iy + 20), hl
	ld	l, (ix - 24)
	ld	(iy + 23), l
	ld	hl, (ix - 15)
	ld	(iy + 24), hl
	ld	(iy + 27), d
	ld	e, d
	call	__fmul
	ld	hl, 1
	jp	.LBB4_5
	.local	.LBB4_3
.LBB4_3:
	ld	bc, 0
	ld	(iy + 4), bc
	ld	(iy + 7), b
	ld	(iy + 8), bc
	ld	(iy + 11), b
	ld	hl, (ix + 9)
	ld	(iy + 16), hl
	ld	a, (ix + 12)
	ld	(iy + 19), a
	ld	(iy + 20), bc
	ld	(iy + 23), b
	ld	(iy + 24), hl
	ld	(iy + 27), a
	push	bc
	pop	hl
	xor	a, a
	jp	.LBB4_5
	.local	.LBB4_4
.LBB4_4:
	ld	hl, (ix + 9)
	push	hl
	pop	bc
	ld	a, (ix + 12)
	lea	hl, iy + 0
	call	__fsub
	push	bc
	pop	iy
	ld	d, a
	ld	hl, (ix + 21)
	push	hl
	pop	bc
	ld	a, (ix + 24)
	ld	hl, (ix + 27)
	ld	e, (ix + 30)
	call	__fadd
	push	bc
	pop	hl
	ld	e, a
	lea	bc, iy + 0
	ld	a, d
	call	__fdiv
	ld	(ix - 3), bc
	ld	d, a
	ld	iy, (ix + 6)
	ld	(iy + 4), bc
	ld	(iy + 7), d
	ld	(iy + 8), bc
	ld	(iy + 11), d
	call	__fneg
	ld	hl, (ix + 21)
	ld	e, (ix + 24)
	call	__fmul
	ld	hl, (ix + 9)
	ld	e, (ix + 12)
	call	__fadd
	ld	(iy + 16), bc
	ld	(iy + 19), a
	ld	bc, (ix - 3)
	ld	a, d
	ld	hl, (ix + 27)
	ld	e, (ix + 30)
	call	__fmul
	ld	(iy + 20), bc
	ld	(iy + 23), a
	ld	hl, (ix + 45)
	ld	(iy + 24), hl
	ld	e, (ix + 48)
	ld	(iy + 27), e
	ld	bc, (ix - 3)
	ld	a, d
	call	__fmul
	ld	hl, 2
	.local	.LBB4_5
.LBB4_5:
	ld	(iy + 28), bc
	ld	(iy + 31), a
	ld	(iy + 32), hl
	lea	hl, iy + 0
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end4
.Lfunc_end4:
	.size	_bjt_operating_point, .Lfunc_end4-_bjt_operating_point
                                        ; -- End function
	.section	.text._main,"ax",@progbits
	.globl	_main                           ; -- Begin function main
	.type	_main,@function
_main:                                  ; @main
; %bb.0:
	ld	iy, -3145600
	call	_os_ClrLCD
	call	_os_HomeUp
	call	_os_DrawStatusBar
	ld	hl, _.str
	push	hl
	call	_os_PutStrFull
	pop	hl
	ld	iy, -3145600
	call	_os_NewLine
	ld	hl, _.str.1
	push	hl
	call	_os_PutStrFull
	pop	hl
	ld	iy, -3145600
	call	_os_NewLine
	ld	hl, _.str.2
	push	hl
	call	_os_PutStrFull
	pop	hl
	.local	.LBB5_1
.LBB5_1:                                ; =>This Inner Loop Header: Depth=1
	call	_os_GetCSC
	or	a, a
	jr	z, .LBB5_1
; %bb.2:
	or	a, a
	sbc	hl, hl
	ret
	.local	.Lfunc_end5
.Lfunc_end5:
	.size	_main, .Lfunc_end5-_main
                                        ; -- End function
	.section	.rodata._.str,"a",@progbits
	.balign	1
	.local	_.str
_.str:
	.asciz	"BJT CALCULATOR"

	.section	.rodata._.str.1,"a",@progbits
	.balign	1
	.local	_.str.1
_.str.1:
	.asciz	"CEdev native test OK"

	.section	.rodata._.str.2,"a",@progbits
	.balign	1
	.local	_.str.2
_.str.2:
	.asciz	"Press any key"

	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.section	".note.GNU-stack","",@progbits
	.extern	__fmul
	.extern	_os_HomeUp
	.extern	_os_ClrLCD
	.extern	_llvm.eh.sjlj.functioncontext
	.extern	_os_GetCSC
	.extern	_llvm.eh.sjlj.callsite
	.extern	_llvm.eh.sjlj.setup.dispatch
	.extern	_llvm.stacksave.p0
	.extern	__fadd
	.extern	__fcmp
	.extern	_llvm.eh.sjlj.lsda
	.extern	__frameset0
	.extern	__Unwind_SjLj_Register
	.extern	_llvm.frameaddress.p0
	.extern	_os_DrawStatusBar
	.extern	__Unwind_SjLj_Unregister
	.extern	_os_PutStrFull
	.extern	_llvm.stackrestore.p0
	.extern	__frameset
	.extern	_llvm.fmuladd.f32
	.extern	__fneg
	.extern	__fdiv
	.extern	_os_NewLine
	.extern	__fsub
