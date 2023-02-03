#include "function.h"
#include <stdio.h>
#include <stdlib.h>


int main(void) {
	const int sizeOfMas1 = 5;
	const int sizeOfMas2 = 5;
	int mas1[] = { 1,2,3,4,5 };
	int mas2[] = { 2,3,5,6,7 };

	const int sizeOfResult = sizeOfMas1 + sizeOfMas2;

    int *result = calloc(sizeOfMas1 + sizeOfMas2, sizeof(int));
	
	mergeMas(mas1, mas2, result, sizeOfMas1, sizeOfMas2, sizeOfResult);
	
	for (int i = 0; i < sizeOfResult; i++) {
		printf("result[%d] = %d\n", i, result[i]);
	}

	return 0;

}