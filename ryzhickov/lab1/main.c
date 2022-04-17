#include <stdio.h>
#include <stdlib.h>

int n = 5;

void linfit2(float x[n], float y[n], float *y_calc) {

    float sum_x = 0, sum_y = 0, sum_xy = 0,
            sum_x2 = 0, sum_y2 = 0;
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
        *(y_calc + i) = a + b * x[i];
    }
}

int main() {
    float x[5];
    float y[5];
    float y_calc[5];

    for (int i = 0; i < n; i++) {
        x[i] = (float) (rand() % 100) / 100;
        y[i] = (float) (rand() % 100) / 100;
    }

    linfit2(x, y, &y_calc);

    printf("x: ");

    for (int i = 0; i < n; ++i) {
        printf("%f ;", x[i]);
    }

    printf("\ny: ");

    for (int i = 0; i < n; ++i) {
        printf("%f ;", y[i]);
    }

    printf("\ny_calc: ");

    for (int i = 0; i < n; ++i) {
        printf("%f ;", y_calc[i]);
    }
}