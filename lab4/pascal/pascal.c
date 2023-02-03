#include <stdio.h>
#include "pascal.h"


int pascal(int pokaz, int *array) {
    if (pokaz < 0) {
        printf("pokaz must be greater than zero");
        return -1;
    }
    *array = 1;
    int len = 2;
    int* ptr = array;
    while (pokaz > 0) {
        for (int i = len - 1; i >= 1; i--) {
            *(ptr + i) = *(ptr + i - 1) + *(ptr + i);
        }
        pokaz--;
        len++; 
    }
    return 0;
}