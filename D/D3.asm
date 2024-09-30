.data
	V: .space 60
	A: .space 60
.text
	addi t3, zero, 60
	la a0, V
	la a1, A
	
	add t0, zero, zero
	do:
	
	
	  add t4, a0, t0
	  sw t4, (t4)
	  lw t2, (t4)
	  
	  add t4, a1, t0
	  sw t2, (t4)
	  	  
	  addi t0, t0, 4
	  blt t0, t3, do	
	end: nop
