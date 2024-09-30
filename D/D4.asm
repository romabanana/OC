.data
	V: .space 60
	A: .space 60
.text
	addi t3, zero, 60
	la a0, V
	la a1, A
	
	add t0, zero, zero
	add t5, zero, zero
	addi a3, zero, 2 #para chequear imparidad
	do:
	
	
	  add t4, a0, t0
	  sw t5, (t4)
	  lw t2, (t4)
	  rem t6, t2, a3 #remainder de /2
	  beq t6, zero, even
	 
	  addi a1, a1, 4
	  sw t2, (a1)
	  
	  even:
	  addi t0, t0, 4
	  addi t5, t5, 1
	  blt t0, t3, do	
	end: nop
	
	

