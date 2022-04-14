#include <stdio.h>
#include <stdlib.h>

#define RMAX 3
#define CMAX 3


void get_data(double a[RMAX][CMAX], double y[CMAX]) {
	a[0][0] = 1;
	a[0][1] = -43;
	a[0][2] = 19;
	y[0] = 81;
	a[1][0] = 145;
	a[1][1] = -134;
	a[1][2] = 99;
	y[1] = 12;
	a[2][0] = 325;
	a[2][1] = 991;
	a[2][2] = -199;
	y[2] = 213;
}


double deter(double a[RMAX][CMAX]) {
	return(a[0][0] * (a[1][1] * a[2][2] - a[2][1] * a[1][2])
		- a[0][1] * (a[1][0] * a[2][2] - a[2][0] * a[1][2])
		+ a[0][2] * (a[1][0] * a[2][1] - a[2][0] * a[1][1]));
}


void setup(double a[RMAX][CMAX], double b[RMAX][CMAX], double y[CMAX], double coef[CMAX], int j, double det) {
	int i;
	for (i = 0; i < RMAX; i++) {
		b[i][j] = y[i];
		if (j > 0) {
			b[i][j - 1] = a[i][j - 1];
		}
	}
	coef[j] = deter(b) / det;
}


void solve(double a[RMAX][CMAX], double y[CMAX], double coef[CMAX]) {
	double b[RMAX][CMAX];
	int i, j;
	double det;

	for (i = 0; i < RMAX; i++) {
		for (j = 0; j < CMAX; j++) {
			b[i][j] = a[i][j];
		}
	}

	det = deter(b);
	if (det == 0) {
		return;
	}
	else {
		setup(a, b, y, coef, 0, det);
		setup(a, b, y, coef, 1, det);
		setup(a, b, y, coef, 2, det);
	}
}


int main() {
	double a[RMAX][CMAX];
	double y[CMAX];
	double coef[CMAX];

	get_data(a, y);
	solve(a, y, coef);

	return 0;
}