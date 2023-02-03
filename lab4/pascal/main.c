#include <stdlib.h>
#include <stdio.h>
#include "pascal.h"

int main() {
    int pokaz = -1;
    int *array = calloc(pokaz + 1, sizeof(int));
    pascal(pokaz, array);
    for(int i = 0; i <= pokaz; i++) {
        printf("%d\t", *(array + i));
    }

    printf("\n");
    
    pokaz = 0;
    int *array1 = calloc(pokaz + 1, sizeof(int));
    pascal(pokaz, array1);
    for (size_t i = 0; i <= pokaz; i++) {
        printf("%d\t", *(array1 + i));
    }

    printf("\n");

    pokaz = 1;
    int *array2 = calloc(pokaz + 1, sizeof(int));
    pascal(pokaz, array2);
    for (size_t i = 0; i <= pokaz; i++) {
        printf("%d\t", *(array2 + i));
    }

    printf("\n");

    pokaz = 10;
    int *array3 = calloc(pokaz + 1, sizeof(int));
    pascal(pokaz, array3);
    for (size_t i = 0; i <= pokaz; i++) {
        printf("%d\t", *(array3 + i));
    }

    return 0;
}

