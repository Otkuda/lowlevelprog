.text
.globl __start
__start:
  la a3, array_length # загрузили длину массива в регистр а3
  lw a3, 0(a3)
  
  la a2, pokaz # загрузили показатель в регистр а2
  lw a2, 0(a2)
  
  la a4, array # загрузили адрес первого элемента массива в регистр а4
  
  li a5, 1 # загрузили 1 в регистр
  
  jal zero, loop_check1
loop1:
  addi a6, a3, -1
  
  jal zero, loop_check2
  loop2: 
    slli a7, a6, 2 # получаем адрес i-ого элемента
    add a7, a4, a7
    
    lw t0, 0(a7) # загружаем значение по адресу
    lw t1, -4(a7)
    
    add t2, t1, t0
    
    sw t2, 0(a7)
    
    addi a6, a6, -1 # i++
       
  loop_check2:
     bgeu a6, a5, loop2 # for(int i = list.size - 1; i >= 1; i--)
  loop_exit2:
  
  addi a3, a3, 1
  
  addi a2, a2, -1
loop_check1:
  blt x0, a2, loop1 # while(pokaz > 0)
loop_exit1:

finish:  
  li a0, 10
  li a1, 0
  ecall
  
.data
array_length:
  .word 2
pokaz:
  .word 4 
array:
  .word 1, 0 