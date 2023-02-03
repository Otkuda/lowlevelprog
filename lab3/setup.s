# setup.s
.text
__start:
.globl __start
 call main
finish:
 mv a1, a0 # a1 = a0
 li a0, 17 # a0 = 17
 ecall # выход с кодом завершения
 
# main.s
.text
main:
.globl main
 addi sp, sp, -16 # выделение памяти в стеке
 sw ra, 12(sp) # сохранение ra

 lw a0, array_pointer #} 
 lw a1, param         #} find_koeffs( *array, param );
 call find_koeffs     #}
  
 lw a0, array_pointer1 #} 
 lw a1, param1         #} find_koeffs( *array, param );
 call find_koeffs      #}
  
 li a0, 0 # }
 lw ra, 12(sp) # восстановление ra
 addi sp, sp, 16 # освобождение памяти в стеке

 ret # } return 0;
.data
param:
  .word 5
param1:
  .word 6
array_pointer:
  .word 0x000100f0
array_pointer1:
  .word 0x0001010d

 
#pascal_tri.s
# a0 - *array, a1 - pokaz
# find_koeffs
.text
find_koeffs:
.globl find_koeffs
  
  li a2, 2 # инициализация переменных
  li a3, 1 # загрузили 1 в регистр
  sw a3, 0(a0) # инициализировали массив [1] по адресу переданному из главной программы
  
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
    
    addi a4, a4, -1 # i--
       
  loop_check2:
     bgeu a4, a3, loop2 # for(int i = list.size - 1; i >= 1; i--)
  loop_exit2:
  
  addi a2, a2, 1
  
  addi a1, a1, -1
loop_check1:
  blt x0, a1, loop1 # while(pokaz > 0)
loop_exit1:

ret

