#include <stdio.h>
#include <math.h>
#include <stdbool.h>
#include "sampler.h"

double erf(double x){
    const double t6 = 3.078403E-3;
    const double t7 = 4.736005E-4;
    const double t8 = 6.314673E-5;
    const double t9 = 7.429027E-6;
    const double t10 = 7.820028E-7;
    const double t11 = 7.447646E-8;
    const double t12 = 6.476214E-9;

    double x2;

    x2=x*x;
    return 2.0*exp(-x2)/sqrt(M_PI)*(x*(1+x2*(0.66666667+x2*(0.66666667+x2*(0.07619048+x2*(0.01693122+x2*(t6+x2*(t7+x2*(t8+x2*(t9+x2*(t10+x2*(t11+x2*t12))))))))))));

}

double erfc(double x){
    double x2, v, sum;
    x2=x*x;
    v=1.0/(2.0*x2);
    sum=v/(1+8*v/(1+9*v/(1+10*v/(1+11*v/(1+12*v)))));
    sum=v/(1+3*v/(1+4*v/(1+5*v/(1+6*v/(1+7*sum)))));
    printf("%lf\n", sum);
    return 1.0/(exp(x2)*x*sqrt(M_PI)*(1+v/(1+2*sum)));
}

int main(int pargc, char **argv) {
	sampler_init(&pargc, argv);
    int done = 0;
	int i = 5;
    double x, er, ec;
    do {
		printf("%d\n", i);
		i--;
		SAMPLE;
        printf("Arg? ");
        scanf("%lf", &x);
		SAMPLE;
        if (x < 0.0) {
			SAMPLE;
            done = 1;
			SAMPLE;
        }
        else {
			SAMPLE;
			SAMPLE;
            if (x == 0.0) {
				SAMPLE;
                er = 0.0;
                ec = 1.0;
				SAMPLE;
            } else {
				SAMPLE;
				SAMPLE;
                if (x < 1.5)
                {
					SAMPLE;
                    er=erf(x);
                    ec=1.0 - er;
					SAMPLE;
                }
                else
                {
					SAMPLE;
                    ec=erfc(x);
                    er=1.0 - ec;
					SAMPLE;
                }
				SAMPLE;
            }
			SAMPLE;
            printf("X= %lf ,Erf= %lf ,Erfc= %lf\n", x, er, ec);
			SAMPLE;
        }
		SAMPLE;
    }
    while (i > 1);
	SAMPLE;
    return 0;
}
