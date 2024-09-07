.text
	ori t1, zero, 5
	ori t2, zero, 6
	ori t3, zero, 6
	
	
	#t1<5
	#slti t0, t1, 5
	
	#t1 == 5 && t2 == t3
	#addi t4, t1, -5
	#sltiu t4, t4, 0x00000001
	#sub t5, t2, t3
	#sltiu t5, t5, 0x00000001
	#and t0, t4, t5
	
	#t1 != t2 || t1 !=t3
	
	
	sub t4, t1, t2
	sltiu t4, t4, 0x00000001
	sub t4, zero, t4
	
	sub t5, t1, t3
	sltiu t5, t5, 0x00000001
	sub t5, zero t5
	
	or t0, t4, t5
	
	
	#t1 > 6
	#slti t0, t2, 3
	#xori t0, t0, 0x00000001
	
	#t1 > 10 && t1 < 30
	#slti t0, t1, 30
	#slti t3, t1, 10
	#xori t3, t3, 0x00000001
	#and t0, t0, t3
	
	
	
	
	
	
	
	