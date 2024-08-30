.text
	# 17 = 16 + 1 = 2^4 + 2^0 
	li a1, 2
	slli t0, a1, 0 # shifteo 0
	slli t1, a1, 4 # shifteo 4
	add a1, t0, t1 #sumo
	
	#What we want
	li a2, 2
	li a3, 17
	mul a2, a3, a2
	
	# 24 = 16 + 8 = 2^4 + 2^3
	li a1, 2
	slli t0, a1, 4 # shifteo 4
	slli t1, a1, 3 # shifteo 3
	add a1, t0, t1 # sumo 
	
	li a2, 2
	li a3, 24
	mul a2, a3, a2