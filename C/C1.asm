.text
#-------Lee-------------------
	ori t0, zero, 3
	ori t1, zero, 7
	ori t2, zero, 10
	
#-------Comparaciones---------
	#slt t6, t1, t0 # t6 = t1 < t0
	#beq t6, zero, no1 # if(t6 == zero) --> pc += no1
	blt t1, t0, no1
	#slt t6, t2, t0 # t6 = t2 < t0
	#beq t6, zero, no2 # if(t6 == zero) --> pc += no1
	blt t2, t0, no2
	bge t2,t0,no2 # if(t2>=t0) --> pc += no2
	or a0, zero, t0 # a0 = zero or t0 
	j fin # jump a fin
	
#Como funciones.
no2: or a0, zero, t2 # a0 = zero or t0
	j fin # jump a fin
no1: #slt t6, t2, t1 # t6 = t2 < t1
	#beq t6, zero, no2 # if(t6==zero) --> pc += no2 
    blt t2, t1, no2
    or a0, zero, t1 # a0 = zero or t1:
fin: ori a7, x0, 10 # Salida de programa.
	ecall

#So basicamente, sXt set X than (t0 t1 t2) setea t0 = t1 X t2
# y beq(to t1 t2) tira un offset t2 al pc si t0 == t1
  #Se retorna el mayor entre t0 t1 y t3
