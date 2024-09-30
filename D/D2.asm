.text
	addi t1, zero, 61
	addi t2, zero, 3
	addi t3, zero, 1
	
	do: 
		add a0, a0, t1
		sub t2, t2, t3
		bne t2, zero, do
	fin:
		ori a7, zero, 10
		ecall