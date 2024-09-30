.data
  a: .word 1
  b: .word 2
  c: .word -21
  
.text

  lw t0, a
  lw t1, b
  lw t2, c
  la t4, c
  addi t3, t4, 4 #pos donde insertar el menor
 
  blt t0, t1, ma
  blt t1, t2, mb
  sw t2, (t3)
  ma:
    sw t0, (t3)
    j end
  mb:
    sw t1, (t3)
  end:
    addi a7, zero, 10
    ecall
  	