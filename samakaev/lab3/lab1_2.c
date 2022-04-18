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

    double x;
    x2=x*x;

    return 2.0*exp(-x2)/sqrt(M_PI)*(x*(1+x2*(0.66666667+x2*(0.66666667+x2*(0.07619048+x2*(0.01693122+x2*(t6+x2*(t7+x2*(t8+x2*(t9+x2*(t10+x2*(t11+x2*t12))))))))))));

}

double erfc(double x){
    double x2, v, sum;
    x2=x*x;
    v=1.0/(2.0*x2);
    sum=v/(1+8*v/(1+9*v/(1+10*v/(1+11*v/(1+12*v)))));
    sum=v/(1+3*v/(1+4*v/(1+5*v/(1+6*v/(1+7*sum)))));

    return 1.0/(exp(x2)*x*sqrt(M_PI)*(1+v/(1+2*sum)));
}

int main(int pargc, char **argv) {
	sampler_init(&pargc, argv);
	
    bool done = false;
    double x, er, ec;
	int i = 5
	SAMPLE;
    do {
        --i
        x = i
        if (x < 0.0) {
            done = true;
        }
        else {
            if (x == 0.0) {
                er = 0.0;
                ec = 1.0;
            } else {
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
            }
        }
    }
    while (done == false);
	SAMPLE;
    return 0;
}