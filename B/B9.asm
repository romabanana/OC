.text
	ori t0, zero, 0x465 #t0 = 0x00000465
	ori t1, zero, 0x0FF #t1 = 0x000000ff
	ori t2, zero, 0x123 #t1 = 0x00000123
	and a0, t0, t2 #a0 = t0 and t2
	andi a1, t1, 0x35 #a1 = t1 and 0x00000035
	or a2, t1, t0 #a2 = t1 or t2
	ori a3, t1, 1 #a3 = t1 or 0x00000001
	addi a4, t1, 1 #a4 = t1 + 0x00000001
	xor a5, t0, t0 #a5 = t0 xor t0
	xori a6, t0, 0x371 #a6 = t0 xor 0x00000371
	xori a7, a6, 0x371 #a7 = a6 xor 0x00000371
	not s1, a0 # s1 = !a0