#include <iostream>
const int n = 5;
typedef float ary[n];
ary x, y, y_calc;
int i;
float a, b;

void linfit1(const ary x, const ary y) {

    int i;
    float sum_x = 0, sum_y = 0, sum_xy = 0,sum_x2 = 0, sum_y2 = 0;
    float xi, yi, sxy, sxx, syy;
    for (i = 0; i < n; ++i) {

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

    b = sxy / sxx;
    a = ((sum_x2 * sum_y - sum_x * sum_xy) / n) / sxx;
    for (i = 0; i < n; ++i) {
        y_calc[i] = a + b * x[i];
    }
};

int main() {
    for (i = 0; i < n; i++) {
        x[i] = (float) (rand() % 100) / 100;
        y[i] = (float) (rand() % 100) / 100;
    }

    linfit1(x, y);

    std::cout << "\nx: ";

    for (i = 0; i < n; ++i) {
        std::cout << x[i] << " ; ";
    }

    std::cout << "\ny: ";

    for (i = 0; i < n; ++i) {
        std::cout << y[i] << " ; ";
    }

    std::cout << "\ny_calc: ";

    for (i = 0; i < n; ++i) {
        std::cout << y_calc[i] << " ; ";
    }
}