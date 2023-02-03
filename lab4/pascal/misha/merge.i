# 1 "merge.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "merge.c"
# 1 "function.h" 1
# 1 "c:\\users\\otkud\\appdata\\local\\programs\\riscv64-unknown-elf-gcc-10.1.0-2020.08.2-x86_64-w64-mingw32\\lib\\gcc\\riscv64-unknown-elf\\10.1.0\\include\\stddef.h" 1 3 4
# 143 "c:\\users\\otkud\\appdata\\local\\programs\\riscv64-unknown-elf-gcc-10.1.0-2020.08.2-x86_64-w64-mingw32\\lib\\gcc\\riscv64-unknown-elf\\10.1.0\\include\\stddef.h" 3 4

# 143 "c:\\users\\otkud\\appdata\\local\\programs\\riscv64-unknown-elf-gcc-10.1.0-2020.08.2-x86_64-w64-mingw32\\lib\\gcc\\riscv64-unknown-elf\\10.1.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 209 "c:\\users\\otkud\\appdata\\local\\programs\\riscv64-unknown-elf-gcc-10.1.0-2020.08.2-x86_64-w64-mingw32\\lib\\gcc\\riscv64-unknown-elf\\10.1.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 321 "c:\\users\\otkud\\appdata\\local\\programs\\riscv64-unknown-elf-gcc-10.1.0-2020.08.2-x86_64-w64-mingw32\\lib\\gcc\\riscv64-unknown-elf\\10.1.0\\include\\stddef.h" 3 4
typedef int wchar_t;
# 415 "c:\\users\\otkud\\appdata\\local\\programs\\riscv64-unknown-elf-gcc-10.1.0-2020.08.2-x86_64-w64-mingw32\\lib\\gcc\\riscv64-unknown-elf\\10.1.0\\include\\stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
# 426 "c:\\users\\otkud\\appdata\\local\\programs\\riscv64-unknown-elf-gcc-10.1.0-2020.08.2-x86_64-w64-mingw32\\lib\\gcc\\riscv64-unknown-elf\\10.1.0\\include\\stddef.h" 3 4
} max_align_t;
# 2 "function.h" 2

# 2 "function.h"
void mergeMas(int* mas1, int* mas2, int* result, int sizeOfMas1, int sizeOfMas2, int sizeOfResult);
# 2 "merge.c" 2

void mergeMas(int* mas1, int* mas2, int* result, int sizeOfMas1, int sizeOfMas2, int sizeOfResult) {

 int k = 0;
 int j = 0;
 for (int i = 0; i < sizeOfResult; i++) {
  if (mas1[k] <= mas2[j]){
   if (k < sizeOfMas1) {
    result[i] = mas1[k];
    k++;
   }
   else {
    result[i] = mas2[j];
    j++;
   }

  }
  else{
   if (j < sizeOfMas2) {
    result[i] = mas2[j];
    j++;
   }
   else {
    result[i] = mas1[k];
    k++;
   }
  }
 }

}
