#include <stdio.h>
#include <math.h>

float fx(float x){
    return expf(-1*x*x);
}

void simps(float lower, float upper, float tol, float * sum){
    int pieces = 2;
    float x;
    float delta_x = (upper - lower) / (float)pieces;
    float odd_sum = fx(lower + delta_x);
    float even_sum = 0;
    float end_sum = fx(lower) + fx(upper);
    float sum1;

    *sum = (end_sum + 4 * odd_sum) * delta_x / 3;
    printf("%5d %f\n", pieces, *sum);
    do{

        pieces = pieces * 2;
        sum1 = *sum;
        delta_x = (upper - lower) / (float)pieces;
        even_sum = even_sum + odd_sum;
        odd_sum = 0;
        for (int i = 1; i <= pieces / 2; ++i ) {
            x = lower + delta_x * (2.0 * i - 1.0);
            odd_sum = odd_sum + fx(x);
        }
        *sum = (end_sum + 4.0f * odd_sum + 2.0f * even_sum) * delta_x / 3.0;

    } while(fabsf(*sum - sum1) > fabsf(tol * sum1));
}

int main() {
    const double tol = 1.0E-4;
    int done = 0;
    float sum, upper, erf;
    float twopi = 2.0 / sqrt(M_PI);
    float lower = 0.0f;

    do {
        printf("\n");
        printf("Erf? \n");
        scanf("%f", &upper);
        if (upper < 0.0)
            done = 1;
        else
            if (upper == 0.0)
                printf("Erf of 0.0 is 0.0\n");
        else {
            simps(lower, upper, tol, &sum);
            erf = twopi * sum;
            printf("Erf of %7.2f, is %12.8f", upper, erf);
        }
    } while (done == 0);

    return 0;
}
