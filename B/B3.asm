.text
	li a0,0x111117FF
	li a1,0x11111CAB
	#----
	lui a2,0x11111 #Carga 20Msb's
	ori a2,a2,0x7FF #Or entre 0x000 y 0x7ff (0x7ff)
	lui a3,0x11112
	#CAB= 1100 1010 1011
	#!CAB= 0011 0101 0100 (complemento a 1)
	# 355= 0011 0101 0101 (complemento a 2)
	
	# si -0x355 --z 0xfffff355
	# f = 1111
	#  0001 0001 0001 0001 0010 0000 0000 0000
	#or1111 1111 1111 1111 1111 0011 0101 0101
	#  1111 1111 1111 1111 1111 0011 0101 0101
	ori a3,a3,-0x355 

	
	
	#-----
	lui a4,0x11111
	addi a4,a4,0x7FF
	lui a5,0x11112
	addi a5,a5,-0x355
