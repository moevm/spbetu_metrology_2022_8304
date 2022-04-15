#include <stdio.h>
#include <math.h>
#include "sampler.h"

typedef int bool;
#define true  1
#define false 0


float fx (float x)
{
  return (1.0 / x);
}


float romb (float lower, float upper, float tol)
{
    SAMPLE;
    int nx [16];
    float t [136];
    
    bool done = false;
    bool error = false;
    int pieces = 1;
    nx[1] = 1;
    float delta_x = (upper - lower) / pieces;
    float c = (fx(lower) + fx(upper)) * 0.5;
    t[1] = delta_x * c;
    int n = 1;
    int nn = 2;
    float sum = c;
    
    float fotom,x;
    int l,i,j,k,nt,ntra; 
    SAMPLE;
    do 
    {
    	SAMPLE;
        n = n+1;
        fotom = 4;
        nx[n] = nn;
        pieces = pieces * 2;
        l = pieces - 1;
        delta_x = (upper - lower) / pieces;
        
        int ll = (l+1) >> 1;
        SAMPLE;
        for(int ii = 1; ii <= ll; ++ii)
        {
	      SAMPLE;
	      sum += 1.0 / (lower + ((ii << 1) - 1) * delta_x);
	      SAMPLE;
        }
        SAMPLE;
        t[nn] = delta_x * sum;
        
        ntra = nx[n-1];
        k = n-1;
        SAMPLE;
        for(int m = 1; m <= k; ++m)
        {
        	SAMPLE;
	        j = nn+m;
	        nt = (*(nx + n - 1)) + m - 1;
	        t[j] = (fotom * (*(t + j - 1)) - (*(t+nt))) / (fotom-1.0);
	        fotom = fotom * 4;
	        SAMPLE;
        }
        SAMPLE;
       
        SAMPLE;
        if (n > 4)
        {
        	SAMPLE;
	        if (t[nn + 1] != 0.0) {
	        SAMPLE;	        	      
	            if ((fabs(t[ntra+1]-t[nn+1])<=fabs(t[nn+1]*tol))
	            || (fabs(t[nn-1]-t[j])<=fabs(t[j]*tol)))
	            {
	            	SAMPLE;
	                done = true;
	            } else 
	            if (n>15) {
	            	SAMPLE;
	   	       done = true;
	               error = true;
	            }
	            SAMPLE;
	        }
	        SAMPLE;
        }
        SAMPLE;	
        nn = j+1;    
    } while (!done);
    SAMPLE;
    
    return (t[j]);
}

int main(int argc, char **argv)
{
    sampler_init(&argc, argv);
    const float tol = 1.0E-4;
    float lower = 1.0;
    float upper = 9.0;
    SAMPLE;
    float sum = romb(lower,upper,tol);
    SAMPLE;
    return 0;
}
