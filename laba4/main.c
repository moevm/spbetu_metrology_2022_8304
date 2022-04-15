#include <stdio.h>
#include <stdlib.h>

#ifndef n
#define n 1000
#endif

void linfit2(float *x, float *y, float  *y_calc) {
    float sum_x = 0, sum_y = 0, sum_xy = 0, sum_x2 = 0, sum_y2 = 0;
    float xi, yi, sxy, sxx, syy;
    for (int i = 0; i < n; ++i) {
        xi = x[i];
        yi = y[i];
        sum_x += xi;
        sum_y += yi;
        sum_xy += xi * yi;
        sum_x2 += xi * xi;
        sum_y2 += yi * yi;
    }
    sxx = sum_x2 - sum_x * sum_x / n;
    sxy = sum_xy - sum_x * sum_y / n;
    syy = sum_y2 - sum_y * sum_y / n;
    float b = sxy / sxx;
    float a = ((sum_x2 * sum_y - sum_x * sum_xy) / n) / sxx;
    for (int i = 0; i < n; ++i) {
    	y_calc[i] = a + b * x[i];
    }
}

int main(int argc, char **argv) {
    sampler_init(&argc, argv);
    float *x = (float*) malloc(n * sizeof(float));
    float *y = (float*) malloc(n * sizeof(float));
    float *y_calc = (float*) malloc(n * sizeof(float));
    for (int i = 0; i < n; i++) {
        x[i] = (float) (rand() % 100) / 100;
        y[i] = (float) (rand() % 100) / 100;
    }
    linfit2(x, y, y_calc);
    free(x);
    free(y);
    free(y_calc);
    return 0;
}
