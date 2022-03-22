#include <stdio.h>
#include <stdlib.h>
#include "sampler.h"

#ifndef n
#define n 1000
#endif

void linfit2(float *x, float *y, float  *y_calc) {
    float sum_x = 0, sum_y = 0, sum_xy = 0, sum_x2 = 0, sum_y2 = 0;
    float sxy, sxx, syy;
    SAMPLE;
    for (int i = 0; i < n; ++i) {
        
        
        sum_x += x[i];
        sum_y += y[i];
        sum_xy += x[i] * y[i];
        sum_x2 += x[i] * x[i];
        sum_y2 += y[i] * y[i];
    }
    SAMPLE;
    sxx = sum_x2 - sum_x * sum_x / n;
    sxy = sum_xy - sum_x * sum_y / n;
    syy = sum_y2 - sum_y * sum_y / n;
    float b = sxy / sxx;
    float a = ((sum_x2 * sum_y - sum_x * sum_xy) / n) / sxx;
    SAMPLE;
    for (int i = 0; i < n; ++i) {
        *(y_calc + i) = a + b * x[i];
    }
}

int main(int argc, char **argv) {
    sampler_init(&argc, argv);
    SAMPLE;
    float *x = (float*) malloc(n * sizeof(float));
    float *y = (float*) malloc(n * sizeof(float));
    float *y_calc = (float*) malloc(n * sizeof(float));
    SAMPLE;
    for (int i = 0; i < n; i++) {
        x[i] = (float) (rand() % 100) / 100;
        y[i] = (float) (rand() % 100) / 100;
    }
    SAMPLE;
    linfit2(x, y, y_calc);
    SAMPLE;
    printf("x: ");
    for (int i = 0; i < n; ++i) {
        printf("%f ;", x[i]);
    }
    SAMPLE;
    printf("\ny: ");
    for (int i = 0; i < n; ++i) {
        printf("%f ;", y[i]);
    }
    SAMPLE;
    printf("\ny_calc: ");
    for (int i = 0; i < n; ++i) {
        printf("%f ;", y_calc[i]);
    }
    SAMPLE;
    free(x);
    free(y);
    free(y_calc);
    SAMPLE;
}
