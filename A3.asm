.data 
valor: .word 0 #inicializa en zero una palabra y etiqueta "valor"

.text
	lui t0, 0x12345
	lui t1, 0x345
	lui t2, 0x5
	sw t0, valor, t6 #Pseudoinstruccion
  #auipc t6, 0x0000FC10
  #sw t0, 0xFFFFFFF4(t6)
	la a7, valor
	sw t1, 4(a7)
	sw t2, 8(a7)
#Basicamente: valor es una constante en 0.
#Carga los registros t0, t1 y t2.
#Guarda las palabra t0 en valor, 
	#guarda algo temporario en t6. (IDK WHAT)
#Lee la direccion de valor en a7.
#Guarda las palabra t1 en a7 + 4. 
#		    t2 en a7 + 8.
