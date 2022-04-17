#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include "sampler.h"

const int max = 80;
int i;

void swap(int* p, int* q) {
	int* hold;
	hold = p;
	p = q;
	q = hold;
}

void sort(int a[max], int n) {
	SAMPLE;//2
	int done;
	int jump, i, j;
	jump = n;
	SAMPLE;//3
	while (jump > 1) {
		SAMPLE;//4
		jump = jump / 2;
		do {
			SAMPLE;//5
			done = 1;
			SAMPLE;//6
			for (j = 0; SAMPLE, (j < n); ++j) {//7
				SAMPLE;//8
				i = j + jump;
				SAMPLE;//9
				if (a[j] > a[i]) {
					SAMPLE;//10
					swap(&a[i], &a[j]);
					done = 0;
					SAMPLE;//11
				}
				SAMPLE;//12
			}
			SAMPLE;//13
		}
		while (done);
		SAMPLE;//14
	}
	SAMPLE;//15
}

void write_arr(int x[max]) {
	int i;
	for (i = 0; i < max; ++i) {
		printf("%d ", x[i]);
	}
}

int main(int argc, char **argv)
{
	sampler_init(&argc, argv);
	int n = max;
    int x[max];
	srand(time(NULL));
	for (i = 0; i < n; ++i) {
		x[i] = rand() % 100;
	}
	SAMPLE;//1
	sort(x, n);
	SAMPLE;//16
	write_arr(x);
	return 0;
}

