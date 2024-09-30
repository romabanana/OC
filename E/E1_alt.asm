.text
  ori a0,x0,12
  ori a1,x0,7
  ori a2,x0,35

  addi sp, sp, -12
  sw a0, 0(sp)
  sw a1, 4(sp)
  sw a2, 8(sp)
  
  add a0,a1,a2
  addi a1,a1,7
  addi a2, a2,-20

  lw a2,8(sp)
  lw a1,4(sp)
  lw a0,0(sp)
  addi sp,sp,12

  addi a7,x0,10
  ecall