.text
#Determina La pos donde empieza 
# a leer en el data segment
lui a1, 0x10010
lw t0, 0(a1)
lw t1, 4(a1)
lw t2, 8(a1)
#Basicamente Cargas 0x10010 en a1. 
#Luego cargas la palabra a1 + 0 en t0.
#Luego cargas la palabra almacendada en
	# a1 + 4 = 0x10010004 en t1.
	# a1 + 8 = 0x10010008 en t2.
