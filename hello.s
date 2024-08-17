	.text
	.file	"hello.c"
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$zero, $fp, -12
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -16
	ori	$a0, $zero, 2
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	move	$a0, $zero
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.ident	"clang version 19.1.0-rc2 (https://github.com/llvm/llvm-project 28f2d04b3ca36faffe997fa86833e5ed83699272)"
	.section	".note.GNU-stack","",@progbits
