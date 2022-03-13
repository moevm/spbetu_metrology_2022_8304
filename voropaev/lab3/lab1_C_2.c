#include <stdio.h>
#include <math.h>
#include "sampler.h"



float fx(float x){
    return 1/sqrtf(x);
}

void trapez(float lower, float upper, double tol, float *sum){
    float x = 0, end_sum = 0, mid_sum = 0, sum1 = 0;
    float delta_x = 0;
    int i = 0, pieces = 1;
    SAMPLE;
    delta_x = (float)(upper-lower)/pieces;
    end_sum = fx(lower) + fx(upper);
    *sum = end_sum*delta_x/2;
    //printf("1 %lf\n", *sum);
    mid_sum = 0;
    SAMPLE;
    do{
        pieces = pieces * 2;
        sum1 = *sum;
		
        delta_x = (float)(upper - lower) / pieces;
	SAMPLE;
        for (i = 1; i <= pieces / 2; i++) {
            x = lower+delta_x*(float)(2*i - 1);
            mid_sum = mid_sum + fx(x);
        }
	SAMPLE;
        *sum = (end_sum + 2*mid_sum) * delta_x * 0.5;
        //printf("%d %e\n", pieces, *sum);
    }while(fabsf(*sum - sum1) > fabsf(tol*(*sum)));
    SAMPLE;
}

int main(int pargc, char **argv) {
	sampler_init(&pargc, argv);
	
    float lower = 1;
    float upper = 9;
    //printf("\n");
    const double tol = 1.0e-6;
    float sum = 0;
    SAMPLE;
    trapez(lower, upper, tol, &sum);
    SAMPLE;
    //printf("\nsum = %lf", sum);
    return 0;
}
