.text
#	Lectura
	addi t1, zero, 3
	addi t2, zero, 2

#	t1 == t2
	sub t0, t1, t2 
	sltiu t0, t0, 0x00000001
	# si en en abs es < a 1 then es 0.
	#
	#seqz t1, t1 #pseudoinstruction
	#
#	t1 <= t2
	s
	
#	t1 >= t2

#	t1 != t2
	sub t0, t1, t2 
	sltiu t0, t0, 0x00000001
	andi t0, t1, 0x00000001
#	t1 < t2

#	t1 > t2
