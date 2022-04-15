#include <stdio.h>
#include <math.h>

double fx(double x) {
    return 1.0 / x; // (6)
}

void simps(double lower, double upper, double tol, double *sum) {
    int pieces = 2; // (2)
    double
        delta_x = (upper-lower)/pieces,
        odd_sum = fx(lower+delta_x),
        even_sum = 0.0,
        end_sum = fx(lower) + fx(upper); // (2)
    *sum = (end_sum + 4.0 * odd_sum)*delta_x/3.0; // (2)
    printf("%5d %f\n", pieces, *sum); // (2)
    double sum1; // (2)
    do {
        pieces *= 2; // (3)
        sum1 = *sum; // (3)
        delta_x = (upper-lower)/pieces; // (3)
        even_sum = even_sum + odd_sum; // (3)
        odd_sum = 0.0; // (3)
        for (int i = 1; i <= pieces/2; i++) { // (4)
            double x = lower+delta_x*(2*i-1); // (5)
            odd_sum += fx(x); // (7)
        }
        *sum = (end_sum + 4.0*odd_sum + 2.0*even_sum)*delta_x/3.0; // (8)
        printf("%5d %f\n", pieces, *sum); // (8)
    } while (*sum != sum1 && fabs(*sum-sum1) >= fabs(tol**sum)); // (9)
}

int main() {
    const double tol = 1.0e-6; // (1)
    double
        lower = 1.0,
        upper = 9.0,
        sum; // (1)
    simps(lower, upper, tol, &sum);
    printf("\narea=%f\n", sum); // (10)
}
