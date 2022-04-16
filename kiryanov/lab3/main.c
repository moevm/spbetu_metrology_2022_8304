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
	int done;
	int jump, i, j;
	jump = n;
	SAMPLE;
	while (jump > 1) {
		jump = jump / 2;
		SAMPLE;
		do {
			done = 1;
			SAMPLE;
			for (j = 0; j < n; ++j) {
				i = j + jump;
				SAMPLE;
				if (a[j] > a[i]) {
					SAMPLE;
					swap(&a[i], &a[j]);
					SAMPLE;
					done = 0;
				}
				SAMPLE;
			}
			SAMPLE;
		} while (done);
		SAMPLE;
	}
	SAMPLE;
}

void write_arr(int x[max]) {
	int i;
	for (i = 0; i < max; ++i) {
		printf("%d ", x[i]);
	}
}

int main(int argc, char **argv)
{
	int n = max;
	sampler_init(&argc, argv);
    int x[max];
	srand(time(NULL));
	for (i = 0; i < n; ++i) {
		x[i] = rand() % 100;
	}
	SAMPLE;
	sort(x, n);
	SAMPLE;
	write_arr(x);
	return 0;
}

