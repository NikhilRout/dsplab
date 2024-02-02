//4-point linear convolution

#include <stdio.h>
#include <math.h>

int x[7] = {1, 2, 3, 4};
int h[7] = {1, 0, 2, 0};
int y[7];

int main(void) {

	int i, j, k;

	for(i  = 0; i<7; ++i){
		y[i] = 0;
		for(j = 0; j<=i; ++j){
			y[i] += (x[j]*h[i-j]);
		}
	}

	for(i = 0; i < 7; ++i){
		k = y[i];
		printf("\t %d", k);
	}

	return 0;
}