#include <stdio.h>
#include <math.h>
#include "sampler.h"

const double tol = 1.0E-6;

double fx(double x){
    return exp(-x/2);
}

double dfx(double x){
    return -(exp(-x/2))/2;
}

double simps(double lower, double upper, double tol, double* sum){
	SAMPLE;
    int pieces=2;
    double delta_x=(upper-lower)/pieces;
    double odd_sum = fx(lower+delta_x);
    double even_sum =0.0;
    double end_sum =fx(lower)+fx(upper);
    double end_cor =dfx(lower)-dfx(upper);
    *sum=(end_sum+4.0*odd_sum)*delta_x/3.0;
    
    double sum1;
    double x;
    SAMPLE;
    do
    {
		SAMPLE;
        pieces=pieces*2;
        sum1=*sum;
        delta_x=(upper-lower)/pieces;
        even_sum=even_sum+odd_sum;
        odd_sum=0.0;
		SAMPLE;
        for (int i=1; i<=pieces/2; i++) {
			SAMPLE;
	        x=lower+delta_x*(2.0*i-1.0);
	        odd_sum=odd_sum+fx(x);
			SAMPLE;
        }
		SAMPLE;
        *sum=(7.0*end_sum+14.0*even_sum+16.00*odd_sum+end_cor*delta_x)*delta_x/15.0;
		SAMPLE;
    } while ( (*sum!=sum1) && (fabs(*sum-sum1)<=fabs(tol*(*sum))) );
	SAMPLE;
}
int main(int argc, char** argv)
{
	sampler_init(&argc, argv);
    double lower=1.0;
    double upper=9.0;
    double sum = 0.0;
	SAMPLE;
    simps(lower,upper,tol,&sum);
	SAMPLE;
    //printf("\narea= %f\n", sum);
    return 0;
}
