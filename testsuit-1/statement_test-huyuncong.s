	.data
	.word 1
_static_167:
	.asciiz "\n"
	.align 2
_static_168:
	.word 0
_static_169:
	.word 0
_static_170:
	.word 0
	.data
_buffer:
	.word 0
	.text
_buffer_init:
	li $a0, 256
	li $v0, 9
	syscall
	sw $v0, _buffer
	jr $ra
	.text
main:
	jal _buffer_init
	add $fp, $zero, $sp
	li $8, 0
	sw $8, _static_169
	jal _func_main
	move $a0, $v0
	li $v0, 17
	syscall
_func_____built_in_string_less:
	sw $fp, -212($sp)
	add $fp, $sp, -4
	add $sp, $fp, -216
	sw $ra, 0($sp)
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	lw $11, -4($fp)
	sub $12, $11, 4
	lw $13, 0($12)
	sw $10, -8($fp)
	ble $10, $13, _end_if_274
	lw $8, -4($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	sw $10, -8($fp)
_end_if_274:
	li $8, 0
	sw $8, -12($fp)
_begin_loop_205:
	lw $8, -12($fp)
	lw $9, -8($fp)
	bge $8, $9, _end_loop_205
	lw $8, 0($fp)
	lw $9, -12($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	sw $11, -16($fp)
	sw $14, -20($fp)
	beq $11, $14, _end_if_275
	lw $8, -16($fp)
	lw $9, -20($fp)
	slt $10, $8, $9
	move $v0, $10
	sw $10, -76($fp)
	b _end_func_____built_in_string_less
_end_if_275:
_continue_loop205:
	lw $8, -12($fp)
	add $8, $8, 1
	sw $8, -12($fp)
	b _begin_loop_205
_end_loop_205:
	lw $8, -4($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	lw $11, -8($fp)
	slt $12, $11, $10
	move $v0, $12
	sw $12, -88($fp)
	b _end_func_____built_in_string_less
_end_func_____built_in_string_less:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -208($fp)
	jr $ra

_func_____built_in_string_equal:
	sw $fp, -188($sp)
	add $fp, $sp, -4
	add $sp, $fp, -192
	sw $ra, 0($sp)
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	lw $11, -4($fp)
	sub $12, $11, 4
	lw $13, 0($12)
	beq $10, $13, _end_if_276
	move $v0, $zero
	b _end_func_____built_in_string_equal
_end_if_276:
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	li $11, 0
	sw $10, -12($fp)
	sw $11, -8($fp)
_begin_loop_206:
	lw $8, -8($fp)
	lw $9, -12($fp)
	bge $8, $9, _end_loop_206
	lw $8, 0($fp)
	lw $9, -8($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	beq $11, $14, _end_if_277
	move $v0, $zero
	b _end_func_____built_in_string_equal
_end_if_277:
_continue_loop206:
	lw $8, -8($fp)
	add $8, $8, 1
	sw $8, -8($fp)
	b _begin_loop_206
_end_loop_206:
	li $8, 1
	move $v0, $8
	b _end_func_____built_in_string_equal
_end_func_____built_in_string_equal:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -184($fp)
	jr $ra

_func_____built_in_string_inequal:
	sw $fp, -188($sp)
	add $fp, $sp, -4
	add $sp, $fp, -192
	sw $ra, 0($sp)
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	lw $11, -4($fp)
	sub $12, $11, 4
	lw $13, 0($12)
	beq $10, $13, _end_if_278
	li $8, 1
	move $v0, $8
	b _end_func_____built_in_string_inequal
_end_if_278:
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	li $11, 0
	sw $10, -12($fp)
	sw $11, -8($fp)
_begin_loop_207:
	lw $8, -8($fp)
	lw $9, -12($fp)
	bge $8, $9, _end_loop_207
	lw $8, 0($fp)
	lw $9, -8($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	beq $11, $14, _end_if_279
	li $8, 1
	move $v0, $8
	b _end_func_____built_in_string_inequal
_end_if_279:
_continue_loop207:
	lw $8, -8($fp)
	add $8, $8, 1
	sw $8, -8($fp)
	b _begin_loop_207
_end_loop_207:
	move $v0, $zero
	b _end_func_____built_in_string_inequal
_end_func_____built_in_string_inequal:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -184($fp)
	jr $ra

_func_____built_in_string_greater:
	sw $fp, -132($sp)
	add $fp, $sp, -4
	add $sp, $fp, -136
	sw $ra, 0($sp)

	lw $8, -4($fp)
	sw $8, -4($sp)

	lw $9, 0($fp)
	sw $9, -8($sp)

jal _func_____built_in_string_less
	sw $v0, -8($fp)
	lw $8, -8($fp)
	move $v0, $8
	b _end_func_____built_in_string_greater
_end_func_____built_in_string_greater:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -128($fp)
	jr $ra

_func_____built_in_string_less_equal:
	sw $fp, -220($sp)
	add $fp, $sp, -4
	add $sp, $fp, -224
	sw $ra, 0($sp)
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	lw $11, -4($fp)
	sub $12, $11, 4
	lw $13, 0($12)
	sw $10, -8($fp)
	ble $10, $13, _end_if_280
	lw $8, -4($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	sw $10, -8($fp)
_end_if_280:
	li $8, 0
	sw $8, -12($fp)
_begin_loop_208:
	lw $8, -12($fp)
	lw $9, -8($fp)
	bge $8, $9, _end_loop_208
	lw $8, 0($fp)
	lw $9, -12($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	sw $11, -16($fp)
	sw $14, -20($fp)
	beq $11, $14, _end_if_281
	lw $8, -16($fp)
	lw $9, -20($fp)
	slt $10, $8, $9
	move $v0, $10
	sw $10, -76($fp)
	b _end_func_____built_in_string_less_equal
_end_if_281:
_continue_loop208:
	lw $8, -12($fp)
	add $8, $8, 1
	sw $8, -12($fp)
	b _begin_loop_208
_end_loop_208:
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	lw $11, -4($fp)
	sub $12, $11, 4
	lw $13, 0($12)
	sle $14, $10, $13
	move $v0, $14
	sw $14, -96($fp)
	b _end_func_____built_in_string_less_equal
_end_func_____built_in_string_less_equal:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -216($fp)
	jr $ra

_func_____built_in_string_greater_equal:
	sw $fp, -132($sp)
	add $fp, $sp, -4
	add $sp, $fp, -136
	sw $ra, 0($sp)

	lw $8, -4($fp)
	sw $8, -4($sp)

	lw $9, 0($fp)
	sw $9, -8($sp)

jal _func_____built_in_string_less_equal
	sw $v0, -8($fp)
	lw $8, -8($fp)
	move $v0, $8
	b _end_func_____built_in_string_greater_equal
_end_func_____built_in_string_greater_equal:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -128($fp)
	jr $ra

_func_____built_in_println:
	sw $fp, -128($sp)
	add $fp, $sp, -4
	add $sp, $fp, -132
	sw $ra, 0($sp)

	lw $8, 0($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_167
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall
_end_func_____built_in_println:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -124($fp)
	jr $ra

_func_main:
	sw $fp, -492($sp)
	add $fp, $sp, -4
	add $sp, $fp, -496
	sw $ra, 0($sp)
	li $v0, 5
	syscall
	sw $v0, -24($fp)
	lw $8, -24($fp)
	add $9, $8, 5
	add $10, $9, 1
	mul $11, $10, 4
	li $v0, 9
	move $a0, $11
	sw $8, _static_168
	sw $9, -32($fp)
	syscall
	sw $v0, -44($fp)
	lw $8, -32($fp)
	lw $9, -44($fp)
	sw $8, 0($9)
	add $10, $9, 4
	li $11, 0
	sw $10, _static_170
	sw $11, 0($fp)
_continue_loop209:
	lw $8, 0($fp)
	lw $9, _static_168
	bgt $8, $9, _end_loop_209
	lw $8, 0($fp)
	move $9, $8
	add $8, $8, 1
	move $8, $8
	mul $10, $9, 4
	lw $11, _static_170
	add $12, $11, $10
	li $13, 1
	sw $13, 0($12)
	sw $8, 0($fp)
	b _continue_loop209
_end_loop_209:
	lw $8, _static_168
	add $9, $8, 5
	add $10, $9, 1
	mul $11, $10, 4
	li $v0, 9
	move $a0, $11
	sw $9, -72($fp)
	syscall
	sw $v0, -84($fp)
	lw $8, -72($fp)
	lw $9, -84($fp)
	sw $8, 0($9)
	add $10, $9, 4
	lw $11, _static_168
	add $12, $11, 5
	add $13, $12, 1
	mul $14, $13, 4
	li $v0, 9
	move $a0, $14
	sw $10, -4($fp)
	sw $12, -96($fp)
	syscall
	sw $v0, -108($fp)
	lw $8, -96($fp)
	lw $9, -108($fp)
	sw $8, 0($9)
	add $10, $9, 4
	li $11, 1
	mul $12, $11, 4
	lw $13, -4($fp)
	add $14, $13, $12
	li $15, 1
	sw $15, 0($14)
	li $16, 2
	sw $10, -8($fp)
	sw $16, 0($fp)
_begin_loop_210:
	lw $8, 0($fp)
	lw $9, _static_168
	ble $8, $9, _end_if_282
	b _end_loop_210
_end_if_282:
	lw $8, 0($fp)
	mul $9, $8, 4
	lw $10, _static_170
	add $11, $10, $9
	lw $12, 0($11)
	beqz $12, _end_if_283
	lw $8, _static_169
	add $8, $8, 1
	mul $9, $8, 4
	lw $10, -8($fp)
	add $11, $10, $9
	lw $12, 0($fp)
	sw $12, 0($11)
	sub $13, $12, 1
	mul $14, $12, 4
	lw $15, -4($fp)
	add $16, $15, $14
	sw $13, 0($16)
	sw $8, _static_169
_end_if_283:
	lw $8, 0($fp)
	li $9, 1
	sw $8, -12($fp)
	sw $9, -16($fp)
_begin_loop_211:
	lw $8, -16($fp)
	lw $9, _static_169
	sle $10, $8, $9
	move $11, $10
	sw $11, -180($fp)
	beqz $11, _short_evaluate_36
	lw $8, -16($fp)
	mul $9, $8, 4
	lw $10, -8($fp)
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -12($fp)
	mul $14, $13, $12
	lw $15, _static_168
	sle $16, $14, $15
	move $17, $16
	sw $17, -180($fp)
_short_evaluate_36:
	lw $8, -180($fp)
	beqz $8, _end_loop_211
	lw $8, -16($fp)
	mul $9, $8, 4
	lw $10, -8($fp)
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -12($fp)
	mul $14, $13, $12
	lw $15, _static_168
	sw $14, -20($fp)
	ble $14, $15, _end_if_284
	b _continue_loop211
_end_if_284:
	lw $8, -20($fp)
	mul $9, $8, 4
	lw $10, _static_170
	add $11, $10, $9
	sw $zero, 0($11)
	lw $12, -16($fp)
	mul $13, $12, 4
	lw $14, -8($fp)
	add $15, $14, $13
	lw $16, 0($15)
	lw $17, -12($fp)
	rem $18, $17, $16
	bne $18, 0, _else_285
	lw $8, -12($fp)
	mul $9, $8, 4
	lw $10, -4($fp)
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -16($fp)
	mul $14, $13, 4
	lw $15, -8($fp)
	add $16, $15, $14
	lw $17, 0($16)
	mul $18, $12, $17
	lw $19, -20($fp)
	mul $20, $19, 4
	add $21, $10, $20
	sw $18, 0($21)
	b _end_loop_211
	b _end_if_285
_else_285:
	lw $8, -12($fp)
	mul $9, $8, 4
	lw $10, -4($fp)
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -16($fp)
	mul $14, $13, 4
	lw $15, -8($fp)
	add $16, $15, $14
	lw $17, 0($16)
	sub $18, $17, 1
	mul $19, $12, $18
	mul $20, $13, 4
	add $21, $15, $20
	lw $22, 0($21)
	mul $23, $8, $22
	mul $24, $23, 4
	add $25, $10, $24
	sw $19, 0($25)
_end_if_285:
_continue_loop211:
	lw $8, -16($fp)
	add $8, $8, 1
	move $8, $8
	sw $8, -16($fp)
	b _begin_loop_211
_end_loop_211:
	lw $8, -12($fp)
	mul $9, $8, 4
	lw $10, -4($fp)
	add $11, $10, $9
	lw $12, 0($11)
	sw $12, -4($sp)

jal _func_____built_in_toString
	sw $v0, -368($fp)

	lw $8, -368($fp)
	li $v0, 4
	move $a0, $8

	syscall

	la $8, _static_167
	li $v0, 4
	move $a0, $8

	syscall
_continue_loop210:
	lw $8, 0($fp)
	add $8, $8, 1
	sw $8, 0($fp)
	b _begin_loop_210
_end_loop_210:
	move $v0, $zero
	b _end_func_main
_end_func_main:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -488($fp)
	jr $ra

	.text
_string_copy:
	_begin_string_copy:
	lb $v0, 0($a0)
	beqz $v0, _exit_string_copy
	sb $v0, 0($a1)
	add $a0, $a0, 1
	add $a1, $a1, 1
	j _begin_string_copy
	_exit_string_copy:
	sb $zero, 0($a1)
	jr $ra

# string arg in $a0, left in $a1, right in $a2
###### Checked ######
# used $a0, $a1, $t0, $t1, $t2, $t3, $t4, $v0,
_func_____built_in_substring:
	lw $a0, -4($sp)
	lw $a1, -8($sp)
	lw $a2, -12($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)

	move $t0, $a0

	sub $t1, $a2, $a1
	add $t1, $t1, 1		# $t1 is the length of the substring
	add $a0, $t1, 5
	li $v0, 9
	syscall
	sw $t1, 0($v0)
	add $v0, $v0, 4

	add $a0, $t0, $a1
	add $t2, $t0, $a2
	lb $t3, 1($t2)		# store the ori_begin + right + 1 char in $t3
	sb $zero, 1($t2)	# change it to 0 for the convenience of copying
	move $a1, $v0
	move $t4, $v0
	jal _string_copy
	move $v0, $t4
	sb $t3, 1($t2)

	lw $ra, 0($sp)
	addu $sp, $sp, 4
	jr $ra

# count the length of given string in $a0
###### Checked ######
# used $v0, $v1, $a0
_count_string_length:
	move $v0, $a0

	_begin_count_string_length:
	lb $v1, 0($a0)
	beqz $v1, _exit_count_string_length
	add $a0, $a0, 1
	j _begin_count_string_length

	_exit_count_string_length:
	sub $v0, $a0, $v0
	jr $ra

# non arg, string in $v0
###### Checked ######
# used $a0, $a1, $v0, $t0
_func_____built_in_getString:
	subu $sp, $sp, 4
	sw $ra, 0($sp)

	lw $a0, _buffer
	li $a1, 255
	li $v0, 8
	syscall

	jal _count_string_length

	move $a1, $v0			# now $a1 contains the length of the string
	add $a0, $v0, 5			# total required space = length + 1('\0') + 1 word(record the length of the string)
	li $v0, 9
	syscall
	sw $a1, 0($v0)
	add $v0, $v0, 4
	lw $a0, _buffer
	move $a1, $v0
	move $t0, $v0
	jal _string_copy
	move $v0, $t0

	lw $ra, 0($sp)
	addu $sp, $sp, 4
	jr $ra

# string arg in $a0
###### Checked ######
# used $t0, $t1, $t2, $v0
_func_____built_in_parseInt:
	lw $a0, -4($sp)
	li $v0, 0
	move $t0, $a0
	li $t2, 1

	_count_number_pos:
	lb $t1, 0($t0)
	bgt $t1, 57, _begin_parse_int
	blt $t1, 48, _begin_parse_int
	add $t0, $t0, 1
	j _count_number_pos

	_begin_parse_int:
	sub $t0, $t0, 1

	_parsing_int:
	blt $t0, $a0, _finish_parse_int
	lb $t1, 0($t0)
	sub $t1, $t1, 48
	mul $t1, $t1, $t2
	add $v0, $v0, $t1
	mul $t2, $t2, 10
	sub $t0, $t0, 1
	j _parsing_int

	_finish_parse_int:
	jr $ra

# string1 in $a0, string2 in $a1
###### Checked ######
# used $a0, $a1, $t0, $t1, $t2, $t3, $t4, $t5, $v0
_func_____built_in_string_concatenate:
	lw $a0, -4($sp)
	lw $a1, -8($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)

	move $t2, $a0
	move $t3, $a1

	lw $t0, -4($a0)		# $t0 is the length of lhs
	lw $t1, -4($a1)		# $t1 is the length of rhs
	add $t5, $t0, $t1
	add $a0, $t5, 5
	li $v0, 9
	syscall
	sw $t5, 0($v0)
	add $v0, $v0, 4
	move $t4, $v0

	move $a0, $t2
	move $a1, $t4
	jal _string_copy

	move $a0, $t3
	add $a1, $t4, $t0
	# add $a1, $a1, 1
	jal _string_copy

	move $v0, $t4
	lw $ra, 0($sp)
	addu $sp, $sp, 4
	jr $ra

_func_____built_in_toString:
	# subu $sp, $sp, 4
	# sw $ra, 0($sp)
	# first count the #digits
	lw $a0, -4($sp)
	li $t0, 0			# $t0 = 0 if the number is a negnum
	bgez $a0, _skip_set_less_than_zero
	li $t0, 1			# now $t0 must be 1
	neg $a0, $a0
	_skip_set_less_than_zero:
	beqz $a0, _set_zero

	li $t1, 0			# the #digits is in $t1
	move $t2, $a0
	move $t3, $a0
	li $t5, 10

	_begin_count_digit:
	div $t2, $t5
	mflo $v0			# get the quotient
	mfhi $v1			# get the remainder
	bgtz $v0 _not_yet
	bgtz $v1 _not_yet
	j _yet
	_not_yet:
	add $t1, $t1, 1
	move $t2, $v0
	j _begin_count_digit

	_yet:
	beqz $t0, _skip_reserve_neg
	add $t1, $t1, 1
	_skip_reserve_neg:
	add $a0, $t1, 5
	li $v0, 9
	syscall
	sw $t1, 0($v0)
	add $v0, $v0, 4
	add $t1, $t1, $v0
	sb $zero, 0($t1)
	sub $t1, $t1, 1

	_continue_toString:
	div $t3, $t5
	mfhi $v1
	add $v1, $v1, 48	# in ascii 48 = '0'
	sb $v1, 0($t1)
	sub $t1, $t1, 1
	mflo $t3
	# bge $t1, $v0, _continue_toString
	bnez $t3, _continue_toString

	beqz $t0, _skip_place_neg
	li $v1, 45
	sb $v1, 0($t1)
	_skip_place_neg:
	# lw $ra, 0($sp)
	# addu $sp, $sp, 4
	jr $ra

	_set_zero:
	li $a0, 6
	li $v0, 9
	syscall
	li $a0, 1
	sw $a0, 0($v0)
	add $v0, $v0, 4
	li $a0, 48
	sb $a0, 0($v0)
	jr $ra
