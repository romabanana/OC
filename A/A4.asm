.text
	lui t0, 0x12345
	sw t0, (sp)
	lui a1, 0x10010
	lw t1, (sp)
	sw t1, (a1)
	li a7, 10
	ecall
#Basicamente: -Carga 0x12345 en t0.
#	      -Guarda t0 en sp (stack pointer). 
#	      -Carga 0x10010 en a1.
#	      -Lee sp en t1.
#	      -Guarda t1 en a1.
# 	      -a7 = 0x0000000a
#   	      -ecall ???