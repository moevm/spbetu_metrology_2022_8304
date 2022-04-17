#include <stdio.h>
#include <math.h>
#include "sampler.h"

double fx(double x) {
    return 1.0 / x;
}

void simps(double lower, double upper, double tol, double *sum) {
    SAMPLE; // 2
    int pieces = 2;
    double
        delta_x = (upper-lower)/pieces,
        odd_sum = fx(lower+delta_x),
        even_sum = 0.0,
        end_sum = fx(lower) + fx(upper);
    *sum = (end_sum + 4.0 * odd_sum)*delta_x/3.0;
    // printf("%5d %f\n", pieces, *sum);
    double sum1;
    do {
        SAMPLE; // 3
        pieces *= 2;
        sum1 = *sum;
        delta_x = (upper-lower)/pieces;
        even_sum = even_sum + odd_sum;
        odd_sum = 0.0;
        SAMPLE; // 4
        for (int i = 1; i < pieces; i+=2) { // 4 (condition)
            odd_sum += fx(lower+delta_x*i);
            SAMPLE; // 4
        }
        *sum = (end_sum + 4.0*odd_sum + 2.0*even_sum)*delta_x/3.0;
        // printf("%5d %f\n", pieces, *sum);
        SAMPLE; // 5
    } while (*sum != sum1 && fabs(*sum-sum1) >= fabs(tol**sum)); // 5 (condition)
    SAMPLE; // 6
}

int main(int argc, char **argv) {
    sampler_init(&argc, argv);
    SAMPLE; // 1
    const double tol = 1.0e-6;
    double
        lower = 1.0,
        upper = 9.0,
        sum;
    simps(lower, upper, tol, &sum);
    SAMPLE; // 7
    // printf("\narea=%f\n", sum);
}
