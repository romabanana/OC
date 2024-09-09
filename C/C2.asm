.text
#	Lectura
<<<<<<< HEAD
	addi t1, zero, 4
	addi t2, zero, 3

#	t1 == t2
	#sub t0, t1, t2 
	#sltiu t0, t0, 0x00000001
	
	
=======
	addi t1, zero, 3
	addi t2, zero, 2

#	t1 == t2
	sub t0, t1, t2 
	sltiu t0, t0, 0x00000001
>>>>>>> new
	# si en en abs es < a 1 then es 0.
	#
	#seqz t1, t1 #pseudoinstruction
	#
#	t1 <= t2
<<<<<<< HEAD
	#sub t0, t2, t1 
	#sltiu t3, t0, 0x00000001
	#slt t0, zero, t0
	#or t0, t0, t3
	
#	t1 >= t2
	#sub t0, t1, t2
	#sub t0, t1, t2 
	#sltiu t3, t0, 0x00000001
	#slt t0, zero, t0
	#or t0, t0, t3
	
#	t1 != t2
	#sub t0, t1, t2 
	#sltiu t0, t0, 0x00000001
	#andi t0, t1, 0x00000001
	
#	t1 < t2
	#sub t0, t2, t1
	#slt t0, zero, t0
	
#	t1 > t2
	#sub t0, t1, t2
	#slt t0, zero, t0
=======
	
	
#	t1 >= t2

#	t1 != t2
	sub t0, t1, t2 
	sltiu t0, t0, 0x00000001
	andi t0, t1, 0x00000001
#	t1 < t2

#	t1 > t2
>>>>>>> new
