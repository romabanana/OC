.data
	cadena: .ascii "O V"
	.align 2
	cant: .byte -1 #�ltima posici�n vacia...
	.align 2
	caract: .ascii " "

.text
  la a0,cadena
  lb t1,caract
  ori a1,zero,0 # contador
  ini: 
    lb t0,0(a0)
    bne t0,t1,distin
    addi a1,a1,1
  distin: 
    beq t0,zero,fin
    addi a0,a0,1 # incremento solamente 1 byte
    j ini
  fin: 
    sw a1,cant,t6
    la a0,cadena
    li a7,4
    ecall
    ori a7,zero,10
    ecall
