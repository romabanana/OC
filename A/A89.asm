#8
.text
	lui s0, 0x10010
	lui t1, 0xABCD0
	lui t2, 0x12340
	sw t1, (s0)
	sw t2, 4(s0)
#9 
	lw t1, 4(s0)
	lw t2, (s0)
	sw t1, (s0)
	sw t2,4(s0)
	