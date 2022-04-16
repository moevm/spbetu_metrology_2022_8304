#include <stdio.h>
#include <time.h>
#include <stdlib.h>

const int max = 80;
int n = max;
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
	while (jump > 1) {
		jump = jump / 2;
		do {
			done = 1;
			for (j = 0; j < n; ++j) {
				i = j + jump;
				if (a[j] > a[i]) {
					swap(&a[i], &a[j]);
					done = 0;
				}
			}
		} while (done);
	}
}

void write_arr(int x[max]) {
	int i;
	for (i = 0; i < n; ++i) {
		printf("%d ", x[i]);
	}
}

int main()
{
    int x[max];
	srand(time(NULL));
	for (i = 0; i < n; ++i) {
		x[i] = rand() % 100;
	}
	sort(x, n);
	write_arr(x);
	return 0;
}

