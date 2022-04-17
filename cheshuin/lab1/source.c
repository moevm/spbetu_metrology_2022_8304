#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define MAXR 9
#define MAXC 3

void get_data(double x[MAXR], double y[MAXR]) {
	int i;
	for (i = 0; i < MAXR; i++) {
		x[i] = (double)i + 1;
	}
	y[0] = 2.07;
	y[1] = 8.6;
	y[2] = 14.42;
	y[3] = 15.8;
	y[4] = 18.92;
	y[5] = 17.96;
	y[6] = 12.98;
	y[7] = 6.45;
	y[8] = 0.27;
}

double deter(double a[MAXC][MAXC]) {
	return(a[0][0] * (a[1][1] * a[2][2] - a[2][1] * a[1][2])
		- a[0][1] * (a[1][0] * a[2][2] - a[2][0] * a[1][2])
		+ a[0][2] * (a[1][0] * a[2][1] - a[2][0] * a[1][1]));
}

void setup(double a[MAXC][MAXC], double b[MAXC][MAXC], double y[MAXC], double coef[MAXC], int j, double det) {
	int i;
	for (i = 0; i < MAXC; i++) {
		b[i][j] = y[i];
		if (j > 0) {
			b[i][j - 1] = a[i][j - 1];
		}
	}
	coef[j] = deter(b) / det;
}

void solve(double a[MAXC][MAXC], double y[MAXC], double coef[MAXC]) {
	double b[MAXC][MAXC];
	int i, j;
	double det;

	for (i = 0; i < MAXC; i++) {
		for (j = 0; j < MAXC; j++) {
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

void linfit(double x[MAXR], double y[MAXR], double y_calc[MAXR], double coef[MAXC], double* corel_coef) {
	double sum_x, sum_y, sum_xy, sum_x2, sum_y2;
	double xi, yi, x2, sum_x3, sum_x4, sum_2y, srs;
	int i;
	double a[MAXC][MAXC];
	double g[MAXC];

	sum_x = 0.0;
	sum_y = 0.0;
	sum_xy = 0.0;
	sum_x2 = 0.0;
	sum_y2 = 0.0;
	sum_x3 = 0.0;
	sum_x4 = 0.0;
	sum_2y = 0.0;

	for (i = 0; i < MAXR; i++) {
		xi = x[i];
		yi = y[i];
		x2 = xi * xi;
		sum_x = sum_x + xi;
		sum_y = sum_y + yi;
		sum_xy = sum_xy + xi * yi;
		sum_x2 = sum_x2 + x2;
		sum_y2 = sum_y2 + yi * yi;
		sum_x3 = sum_x3 + xi * x2;
		sum_x4 = sum_x4 + x2 * x2;
		sum_2y = sum_2y + x2 * yi;
	}

	a[0][0] = MAXR;
	a[1][0] = sum_x;
	a[0][1] = sum_x;
	a[2][0] = sum_x2;
	a[0][2] = sum_x2;
	a[1][1] = sum_x2;
	a[2][1] = sum_x3;
	a[1][2] = sum_x3;
	a[2][2] = sum_x4;
	g[0] = sum_y;
	g[1] = sum_xy;
	g[2] = sum_2y;

	solve(a, g, coef);
	srs = 0.0;

	for (i = 0; i < MAXR; i++) {
		y_calc[i] = coef[0] + coef[1] * x[i] + coef[2] * pow(x[i], 2);
		srs += pow(y[i] - y_calc[i], 2);
	}
	*corel_coef = sqrt(1.0 - srs / (sum_y2 - pow(sum_y, 2) / MAXR));
}

int main() {
	double x[MAXR];
	double y[MAXR];
	double y_calc[MAXR];
	double coef[MAXC];
	double corel_coef;

	get_data(x, y);
	linfit(x, y, y_calc, coef, &corel_coef);

	return 0;
}