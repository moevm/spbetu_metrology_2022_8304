#include <stdio.h>
#include <stdlib.h>
#include "sampler.h"

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
	SAMPLE;
	int i;
	SAMPLE;
	for (i = 0; SAMPLE, i < RMAX; ++i) {
		SAMPLE;
		b[i][j] = *(y + i);
		SAMPLE;
		if (j > 0) {
			SAMPLE;
			b[i][j - 1] = a[i][j - 1];
			SAMPLE;
		}
		SAMPLE;
	}
	SAMPLE;
	*(coef +j) = deter(b) / det;
	SAMPLE;
}


void solve(double a[RMAX][CMAX], double y[CMAX], double coef[CMAX]) {
	SAMPLE;
	double b[RMAX][CMAX];
	int i, j;
	double det;
	SAMPLE;
	for (i = 0; SAMPLE, i < RMAX; ++i) {
		SAMPLE;
		for (j = 0; SAMPLE, j < CMAX; ++j) {
			SAMPLE;
			b[i][j] = a[i][j];
			SAMPLE;
		}
		SAMPLE;
	}
	SAMPLE;

	det = deter(b);
	SAMPLE;
	if (det == 0) {
		SAMPLE;
		return;
	}
	else {
		SAMPLE;
		setup(a, b, y, coef, 0, det);
		setup(a, b, y, coef, 1, det);
		setup(a, b, y, coef, 2, det);
		SAMPLE;
	}
	SAMPLE;
}


int main(int argc, char **argv)
{
    	sampler_init(&argc, argv);
	double a[RMAX][CMAX];
	double y[CMAX];
	double coef[CMAX];

	get_data(a, y);
	SAMPLE;
	solve(a, y, coef);
	SAMPLE;

	return 0;
}
