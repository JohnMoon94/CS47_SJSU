.macro print_int($arg)
	li	$v0, 1		 # System call code for print_int
	li	$a0, $arg	 # Integer to print
	syscall			 # Print the integer
.end_macro

.macro print_str($arg)
	li	$v0, 4		 # System call code for print_str
	la	$a0, $arg	 # Address of the string to print
	syscall			 # Print the string	
.end_macro

.macro exit
	li	$v0, 10	 # Exit call code
	syscall		 # Exit from program
.end_macro

.macro read_int($arg)
	li $v0,5 # Read intger
	syscall
	move $arg, $v0 # move the data to target reg
.end_macro

.macro print_reg_int ($arg)
	li $v0, 1 # print_int call
	move $a0, $arg # move the source reg value to $a0
	syscall
.end_macro
