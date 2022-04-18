#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "sampler.h"

#define max 10

void swap(double* p, double* q)
{
    double hold = *p;
    *p = *q;
    *q = hold;
}

void sort(double* x, int n)
{
    int left[20];
    int right[20];
    int i, j, sp, mid;
    double pivot;
    SAMPLE;	
    left[0] = 0;
    right[0] = n-1;
    sp = 0;
    
    SAMPLE;
    while (sp > -1){
    	SAMPLE;
        if (*(left+sp) >= *(right+sp)) {
            sp--;
            SAMPLE;
            continue;
        } else {
		SAMPLE;
	        i = left[sp];
	        j = right[sp];
	        pivot = x[j];
	        mid = (i + j) / 2; //div
	        SAMPLE;
	        if ((j - i) > 5){
	            SAMPLE;
	            if (((x[mid] < pivot) && (x[mid] > x[i])) || ((x[mid] > pivot) && (x[mid] < x[i]))){
		            swap(x + mid, x + j);
		            SAMPLE;
	            } else {
	                SAMPLE;
	                if (((x[i] < x[mid]) && (x[i] > pivot)) || ((x[i] > x[mid]) && (x[i] < pivot))){
		                swap(x + i, x + j);
		                SAMPLE;
		        }
	            }
	        }
	        
            pivot = *(x+j);
            SAMPLE;
            while (i < j){
            	    SAMPLE;
	            while (*(x+i) < pivot){
	                i++;
	                SAMPLE;
	            }
	            j = j - 1;
	            SAMPLE;
	            while ((i < j) && (pivot < *(x+j))){
	                j--;
	                SAMPLE;
	            }
	            SAMPLE;
	            if (i < j){ 
	                swap(x + i, x + j);
	                SAMPLE;
	            }
            }
            SAMPLE;
            j = *(right + sp);
            SAMPLE;
            swap(x + i, x + j);
            SAMPLE;
            if (i - left[sp] >= right[sp] - i){
	            left[sp + 1] = left[sp];
	            right[sp + 1] = i - 1;
	            left[sp] = i + 1;
	            SAMPLE;
            } else {
	            left[sp + 1] = i + 1;
	            right[sp + 1] = right[sp];
	            right[sp] = i - 1;
	            SAMPLE;
            }
            sp++;
            SAMPLE;
        }
    }
    SAMPLE;
}

int main(int argc, char **argv)
{
    sampler_init(&argc, argv);
    
    int n = max;
    double x[max] = {2.1, 3.0, 0.3, 5.6, 2.7, 1.0, 45.9, 10.0, 94.2, 0.01};
    sort(x, n);
    return 0;
}
