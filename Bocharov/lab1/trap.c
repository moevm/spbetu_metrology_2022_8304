#include <stdio.h> 
#include <math.h> 


const double tol = 1.0E-6;


double fx(double x) {  		
    return 1.0 / x; 
}  


double trapez(double lower, double upper, double tol, double sum) 
{  	
   int pieces = 1; 
   double x, delta_x, end_sum, mid_sum, sum1;     
   delta_x = (upper - lower) / pieces;  	
   end_sum = fx(lower) + fx(upper);  	
   sum = end_sum * delta_x / 2.0; 		
   mid_sum = 0.0; 
       do { 
 	    pieces = pieces * 2;
 	    sum1 = sum; 
 	         delta_x = (upper - lower) / pieces; 
 	         for (int i = 1; i <= pieces / 2; i++) 
 	 	{ 
 	 	        x = lower + delta_x * (2.0 * i - 1.0); 
 	 	        mid_sum = mid_sum + fx(x); 
 	 	} 
 	         sum = (end_sum + 2.0 * mid_sum) * delta_x * 0.5; 
	} while (fabs(sum - sum1) > fabs(tol * sum));
    return sum; 
}  
int  main() 
{
			double sum = 0.0;
			double res = 0.0;
			double upper = 9.0;
			double lower = 1.0;    
 	res = trapez(lower, upper, tol, sum);  
			return 0;
} 
