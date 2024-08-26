.data
	valor: .word 0x805215C9
.text
	la s0,valor
	lbu a1, 0(s0)#c9 
	lbu a2, 1(s0)#15
	lbu a3, 2(s0)#52
	lbu a4, 3(s0)#80 -> Little Endian.
.data
	angel: .word 0x805215C9
.text
	la s0,angel
	lb a1, 0(s0)
	lb a2, 1(s0)
	lb a3, 2(s0)
	lb a4, 3(s0)
	
	#Lees los 2 bytes con sin signo primero,
	#con signo despues. 
	#c9 -> 1100 1001 (neg) starts with one.
	#15 -> 0001 0101 (pos)