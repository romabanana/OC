.data
  dato1: .word 20
  dato2: .word 40
  res: .space 4 #new shit:memory word
  #Reserva memoria.
  dato3: .word 0x10000000
.text
  lw s8, dato1
  lw s9, dato2
  and t0, t0, zero #inicializa en zero
  and t1, t1, zero #same
  bge s8, s9, salto #if(s8>= s9) --> equal
  ori t1, t1, 2000 # 0x00000001
salto: 
  or t0, t0, t1 # t0 or t1
  sw t0, res, t6 # t0 saved in res... t6 temp address
  nop #bubbles
  nop #bubbles
  #if(dato1 >= dato 2) --> 0
  # else --> 1
