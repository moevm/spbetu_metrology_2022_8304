#include <math.h>
#include <stdio.h>
#include "sampler.h"

const double sqrtpi = 1.7724538;
const double tol = 1.0E-4;
const int terms = 12;

// infinite series expansion of the Gaussian error function
double erf (double x) {
    SAMPLE;
    double x2 = x * x;
    double sum = x;
    double term = x;
    int i = 0;
    SAMPLE;
    do {
        SAMPLE;
        i = i + 1;
        double sum1 = sum;
        term = 2.0 * term * x2 / (1.0 + 2.0 * i);
        sum = term + sum1;
        SAMPLE;
    } while (term < tol * sum);
    SAMPLE;
    double res = 2.0 * sum * exp(-x2) / sqrtpi;
    SAMPLE;
    return res;
}

// complement of error function
double erfc (double x) {
    SAMPLE;
    double x2,u,v,sum;
    x2 = x * x;
    v = 1.0 / (2.0 * x2);
    u = 1.0 + v * (terms + 1.0);
    int i = terms;
    SAMPLE;
    do {
        SAMPLE;
        sum = 1.0 + i * v / u;
        u = sum;
        i--;
        SAMPLE;
    } while (i >= 1);
    SAMPLE;
    double res = exp(-x2) / (x * sum * sqrtpi);
    SAMPLE;
    return res;
}

// evaluation of the gaussian error function
int main (int argc, char **argv) {
    sampler_init(&argc, argv);
    double x, er, ec;
    int done = 1;
    do {
        printf("Arg? ");
        scanf("%lf", &x);
        if (x < 0.0) done = 0;
        else {
            SAMPLE;
            if (x == 0.0) {
                SAMPLE;
                er = 0.0;
                ec = 1.0;
                SAMPLE;
            } else {
                SAMPLE;
                if (x < 1.5) {
                    SAMPLE;
                    er = erf(x);
                    ec = 1.0 - er;
                    SAMPLE;
                } else {
                    SAMPLE;
                    ec = erfc(x);
                    er = 1.0 - ec;
                    SAMPLE;
                }
                SAMPLE;
            }
            SAMPLE;
            printf("X = %.8lf; Erf = %.12lf; Erfc = %.12lf\n", x, er, ec);
        }
    } while (done);
}
