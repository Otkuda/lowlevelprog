#main.s

# main.s
.text
main:
.globl main
 addi sp, sp, -16 # выделение памяти в стеке
 sw ra, 12(sp) # сохранение ra

 la a0, array # }
 lw a1, param # } find_koeffs( array, param );
 lw a2, array_length
 call find_koeffs # }
 li a0, 0 # }
 lw ra, 12(sp) # восстановление ra
 addi sp, sp, 16 # освобождение памяти в стеке
 ret # } return 0;
.data
param:
 .word 5
array_length:
  .word 2
array:
 .word 1, 0
