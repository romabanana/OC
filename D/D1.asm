.text
	li a0, 112
	addi a1, zero, 2
	rem t1, a0, a1
	beq t1, zero, even
	li s1, 20
	j fin
	
	
	
	even: 
		li s1, 10
		j fin
	fin:
		ori a7, zero, 10
		ecall
