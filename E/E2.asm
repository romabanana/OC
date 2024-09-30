.text
  
  #main
  addi a1, zero, 1
  addi a2, zero, 2
  jal swap
  j end
  
  # a1: valor 1
  # a2: valor 2
  swap:
    add t0, zero, a1
    add a1, zero, a2
    add a2, zero, t0
    ret
  end: nop