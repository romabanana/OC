.data
	valor: .word 0x805215C9
.text
	la s0, valor
	lhu a1, 0(s0)#half word unsiggned.
	lhu a2, 2(s0)

#.data
	#boy: .word 0x805215C9
.text
	la s0, valor
	lh a1, 0(s0)
	lh a2, 2(s0)
	#Same A6 just half word now...