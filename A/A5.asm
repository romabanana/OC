.data
	elemento: .word 0x4E1C532D
.text
	lw t1,elemento
	

#Definis elemento guardas en t1... idk..
# En A6 A7 tomas 1 bytes (cuarto de word)
# y 2 bytes (halfword). lb y lh 
# lbi y lhi cargan unsigned.
# remember que si los bits empiezan con
# cero se tiene algo positivo y so on...
