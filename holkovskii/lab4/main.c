#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>
#include "sampler.h"

float fx(float x){
    SAMPLE;
    return expf(-1*x*x);
    SAMPLE;
}

void simps(float lower, float upper, float tol, float * sum){
    SAMPLE;
    int pieces = 2;
    float x;
    float delta_x = (upper - lower) / (float)pieces;
    float odd_sum = fx(lower + delta_x);
    float even_sum = 0;
    float end_sum = fx(lower) + fx(upper);
    float sum1;
    SAMPLE;
    *sum = (end_sum + 4 * odd_sum) * delta_x / 3;
    SAMPLE;
    //printf("%5d %f\n", pieces, *sum);
    do{
        SAMPLE;
        pieces = pieces * 2;
        sum1 = *sum;
        delta_x = (upper - lower) / (float)pieces;
        even_sum = even_sum + odd_sum;
        odd_sum = 0;
        SAMPLE;
        for (int i = 1; i <= pieces / 2; ++i ) {
            SAMPLE;
            x = lower + delta_x * (2.0 * i - 1.0);
            odd_sum = odd_sum + fx(x);
            SAMPLE;
        }
        SAMPLE;
        *sum = (end_sum + 4.0f * odd_sum + 2.0f * even_sum) * delta_x / 3.0;
        SAMPLE;

    } while(fabsf(*sum - sum1) > fabsf(tol * sum1));
    SAMPLE;
}

int main() {
    const double tol = 1.0E-4;
    int done = 0;
    float sum, upper, erf;
    float twopi = 2.0 / sqrt(M_PI);
    float lower = 0.0f;
    srand(time(NULL));
    upper = ((float)rand()/(float)(RAND_MAX)) * 9 + 1; // [1:10]

    do {
        //printf("\n");
        //printf("Erf? \n");
        //scanf("%f", &upper);
        if (upper < 0.0)
            done = 1;
        else
            if (upper == 0.0)
                //printf("Erf of 0.0 is 0.0\n");
                continue;
            else {
                SAMPLE;
                simps(lower, upper, tol, &sum);
                SAMPLE;
                erf = twopi * sum;
                //printf("Erf of %7.2f, is %12.8f", upper, erf);
                break;
            }
    } while (done == 0);

    return 0;
}
