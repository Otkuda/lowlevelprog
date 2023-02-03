#include "function.h"

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