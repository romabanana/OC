.text
	addi a2, zero, 1
	addi a3, zero, 1
	addi a4, zero, 0
	addi a5, zero, 1
	
	bne a4, a5, else
	add a1, a2, a3
	beq zero, zero, fin
	else: sub a1, a2, a3
	fin: 