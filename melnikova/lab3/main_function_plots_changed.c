#include "stdio.h"
#include "math.h"
#include <stdlib.h>
#include "sampler.h"

#define DIG 	18            //разрядность чисел
#define N_BITS  16            //число бит которое считаем
const unsigned ONE=1<<(DIG-1);      //единица
const unsigned TWO=ONE<<1;          //двойка
unsigned SCALE=1<<(N_BITS+1);   //масштаб логарифмов

float bessy(float x, float n){
    	const float small = 1.0E-8;
	const float euler =	0.57721566;
	const float pi = 3.1415926;
	const float pi2 = 0.63661977;

	float x2, sum, t, ts, term, xx, y0, y1, ya, yb, yc, ans;
    SAMPLE;
    if(x<12){
        xx = x/2;
        x2 = xx * xx;
        
        double myLog = 0.0;
        double a = 0.5;
	double u=(double)xx;
	for(int i=0; i<16; i++)
	{
		u=u*u;
		if(u>2.7182818)
		{
			u=u/2.7182818;
			myLog+=a;
		}
		a/=2;	
	}
       
        t = myLog + euler;
        sum = 0.0;
        term = t;
        y0 = t;
        int j = 0;
	SAMPLE;
        do{
            j = j+1;
            
            if(j != 1) {
		  
		    sum = sum + 1/(j-1);
		   
		    
            }
            ts = t-sum;
            term = -x2 * term / (j*j) * (1-1 / (j*ts));
            y0 = y0+term;
          
        }while(!(abs(term) < small));
        SAMPLE;
        term = xx * (t-0.5);
        sum = 0.0;
        y1 = term;
        j = 1;
       SAMPLE;
        do{
            j = j+1;
            sum = sum+1/(j-1);
            ts = t-sum;
            term = (-x2 * term) / (j * (j-1)) * ((ts-0.5 / j) / (ts + 0.5 / (j-1)));
            y1 = y1+term;
            
        }while(!(abs(term) < small));
        SAMPLE;
        y0 = pi2 * y0;
        y1 = pi2 * (y1 - 1/x);

        if(n == 0.0){
            return y0;
            
        }else if(n == 1.0){
            return y1;
          
        }else{
            ts = 2.0/x;
            ya = y0;
            yb = y1;
            int j=2;
           SAMPLE;
            if(j<=(int)(n+0.01)){
            SAMPLE;
                do{
                	
                    yc = ts*(j-1)*yb-ya;
                    ya = yb;
                    yb = yc;
                    j+=1;
                 
                }while(j<=(int)(n+0.01));
            SAMPLE;
            }
            SAMPLE;
            return yc;
            
        }
        SAMPLE; 
        return ans;
      
    }else{
	float mySqrt = 2 / (pi*x);
	    __asm__ ( "fsqrt" : "+t" (mySqrt) );

	float toSin = x - pi/4 - n * pi/2;

	toSin *= 0.63661977236758134308; // 2/Pi
	int sign = toSin < 0.0;
	toSin = sign ? -toSin : toSin;
	int xf = (int)toSin;
	toSin -= xf;
	if ((xf & 1) == 1)
	     toSin = 1 - toSin;
	int per = ((xf >> 1) & 1) == 1;
	float xxForSin = toSin * toSin;
	float y = toSin * (1.5707903005870776 + xxForSin * (-0.6458858977085938 +
	xxForSin*(0.07941798513358536 - 0.0043223880120647346 * xxForSin)));
	float mySin = sign ^ per ? -y : y;
	float res = mySqrt * mySin;
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
