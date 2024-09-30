.data
	cadena: .ascii "argentina"
	.align 2
	cant: .byte -1 #última posición vacia...
	.align 2
	caract: .ascii "a"
	.align 2
	reemp: .ascii "x"
	

.text
  la a0,cadena
  lb t1,caract
  lb t2,reemp
  ori a1,zero,0 # contador
  ini: 
    lb t0,0(a0)
    bne t0,t1,distin
    addi a1, a1, 1
    sb t2, 0(a0)
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

