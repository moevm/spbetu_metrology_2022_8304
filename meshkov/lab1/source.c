#include <stdio.h>
#include <math.h>

double fx(double x) {
    return 1.0 / x;
}

void simps(double lower, double upper, double tol, double *sum) {
    int pieces = 2;
    double
        delta_x = (upper-lower)/pieces,
        odd_sum = fx(lower+delta_x),
        even_sum = 0.0,
        end_sum = fx(lower) + fx(upper);
    *sum = (end_sum + 4.0 * odd_sum)*delta_x/3.0;
    printf("%5d %f\n", pieces, *sum);
    double sum1;
    do {
        pieces *= 2;
        sum1 = *sum;
        delta_x = (upper-lower)/pieces;
        even_sum = even_sum + odd_sum;
        odd_sum = 0.0;
        for (int i = 1; i <= pieces/2; i++) {
            double x = lower+delta_x*(2*i-1);
            odd_sum += fx(x);
        }
        *sum = (end_sum + 4.0*odd_sum + 2.0*even_sum)*delta_x/3.0;
        printf("%5d %f\n", pieces, *sum);
    } while (*sum != sum1 && fabs(*sum-sum1) >= fabs(tol**sum));
}

int main() {
    const double tol = 1.0e-6;
    double
        lower = 1.0,
        upper = 9.0,
        sum;
    simps(lower, upper, tol, &sum);
    printf("\narea=%f\n", sum);
}

