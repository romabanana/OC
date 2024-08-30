.text
	ori t0, zero, 476 
	ori t1, zero, 0xFF
	lui t2, 1
	ori t3, zero, 4
	lui t4 0xC3010
	slli, s0,t0, 16 
	srai si, t1, 1 
	srl s2, t4, t3 
	sra s3, t4, t3
	slli s4, t3, 1
	add s4, s4, t3
	sll s5, t0. s4