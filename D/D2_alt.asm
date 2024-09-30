.text
	# 61 = 64 - 2 - 1 
	addi t1, zero, 36 #t1 = 36
	slli t3, t1, 6 # t3 = 36*2^6 = 36*64
	slli t2, t1, 1 # t2 = 36 * 2
	sub a0, t3, t2 # a0 = t3 - t2 = 36(64-2)
	sub a0, a0, t1 # a0 = a0 - t1 = 36(64-2-1) = 36(64)