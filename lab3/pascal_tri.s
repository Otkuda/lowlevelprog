#pascal_tri.s
# a0 - array, a1 - pokaz, a2 - length
# find_koeffs
.text
find_koeffs:
.globl find_koeffs
 li a3, 1 # загрузили 1 в регистр
  
  jal zero, loop_check1
loop1:
  addi a4, a2, -1
  
  jal zero, loop_check2
  loop2: 
    slli a5, a4, 2 # получаем адрес i-ого элемента
    add a5, a0, a5
    
    lw a6, 0(a5) # загружаем значение по адресу
    lw a7, -4(a5)
    
    add t0, a6, a7
    
    sw t0, 0(a5)
    
    addi a4, a4, -1 # i++
       
  loop_check2:
     bgeu a4, a3, loop2 # for(int i = list.size - 1; i >= 1; i--)
  loop_exit2:
  
  addi a2, a2, 1
  
  addi a1, a1, -1
loop_check1:
  blt x0, a1, loop1 # while(pokaz > 0)
loop_exit1:

finish:
ret
