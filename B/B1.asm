	.text
	#	li t0, 0x512 #Pseudoinstruction works
	#	lui t0, 0x0000512 #Instruction doesn't work
	addi t0, zero, 0x512 #works

#li.
#Hexadecimal: 51 20 02 93
#Binario: 0101 0001 0010 0000 0000 0010 1001 0011
#Binario: 
#addi:    [_immediate] = 0101 0001 0010 (512)
	# [rs1] = 00000 (x0)
	# [0] = 000 (tres ceros jeje)
	# [rd_] = 00101 (x6)
	#[Opcode] = 0010011 (addi opcode)

#addi
#Same as li.
#li es un pseudoinstruction e implenta aquellas instrucciones necesarias
#para cargar en el registro el valor.
#(Pueden ser mas de una).