.data
  dato1: .word 87
  dato2: .word 13
  res: .space 4 
  mod: .space 4 
.text
  # Carga desde memoria
  lw t1, dato1
  lw t2, dato2
  # Incializa a0, a1 en zero
  and a0, zero, zero
  and a1, zero, zero
  
si: beq t2, zero, finsi #if(t2==zero) --> finsi
enton: div a0, t1, t2 #division (antes chequeo que t2 != 0)
       rem a1, t1, t2 #
finsi: sw a0, res, t0 #guarda cociente
       sw a1, mod, t0 #guarda resto
       nop
