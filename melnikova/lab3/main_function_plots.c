#include "stdio.h"
#include "math.h"
#include <stdlib.h>
#include "sampler.h"

float bessy(float x, float n){
    const float small = 1.0E-8;
	const float euler =	0.57721566;
	const float pi = 3.1415926;
	const float pi2 = 0.63661977;

	float x2, sum, t, ts, term, xx, y0, y1, ya, yb, yc, ans;
    SAMPLE;
    if(x<12){
        SAMPLE;
        xx = 0.5 * x;
        x2 = xx * xx;
        t = log(xx) + euler;
        sum = 0.0;
        term = t;
        y0 = t;
        int j = 0;
	    SAMPLE;
        do{
            SAMPLE;
            j = j+1;
            SAMPLE;
            if(j != 1) {
                SAMPLE;
                sum = sum + 1/(j-1);
                SAMPLE;
            }
            SAMPLE;
            ts = t-sum;
            term = -x2 * term / (j*j) * (1-1 / (j*ts));
            y0 = y0+term;
            SAMPLE;
        }while(!(abs(term) < small));
        SAMPLE;
        term = xx * (t-0.5);
        sum = 0.0;
        y1 = term;
        j = 1;
       SAMPLE;
        do{
            SAMPLE;
            j = j+1;
            sum = sum+1/(j-1);
            ts = t-sum;
            term = (-x2 * term) / (j * (j-1)) * ((ts-0.5 / j) / (ts + 0.5 / (j-1)));
            y1 = y1+term;
            SAMPLE;
        }while(!(abs(term) < small));
        SAMPLE;
        y0 = pi2 * y0;
        y1 = pi2 * (y1 - 1/x);
        SAMPLE;
        if(n == 0.0){
            SAMPLE;
            return y0;
        }else if(n == 1.0){
            SAMPLE;
            return y1;
        }else{
            SAMPLE;
            ts = 2.0/x;
            ya = y0;
            yb = y1;
            int j=2;
            SAMPLE;
            if(j<=trunc(n+0.01)){
                SAMPLE;
                do{
                	SAMPLE;
                    yc = ts*(j-1)*yb-ya;
                    ya = yb;
                    yb = yc;
                    j+=1;
                    SAMPLE;
                }while(j<=trunc(n+0.01));
                SAMPLE;
            }
            SAMPLE;
            return yc;
        }
    }else{
        SAMPLE;
    	float res = sqrt(2 / (pi*x)) * sin(x - pi/4 - n * pi/2);
    	SAMPLE;
    	return res;
    }
    
}

int main(int argc, char** argv){
    sampler_init(&argc, argv);
    float x, ordr;
    int done = 0;
    printf("\n");
    do{
        printf("Order? \n");
        scanf("%f", &ordr);
        if(ordr < 0.0){
            done = 1;
        }else{
            do{
                printf("Arg? \n");
                scanf("%f", &x);
            }while(!(x >= 0.0));
             SAMPLE;
             float res = bessy(x,ordr);
             SAMPLE;
            printf("Y Bessel is %f \n", res);
             
        }
    }while(!(done));
    return 0;
}
