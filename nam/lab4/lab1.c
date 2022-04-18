#include <stdio.h>
#include <stdlib.h>
#include <time.h>

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
	
    left[0] = 0;
    right[0] = n-1;
    sp = 0;
    
    while (sp > -1){
        if (left[sp] >= right[sp]) {
            sp--;
        } else {
	        i = left[sp];
	        j = right[sp];
	        pivot = x[j];
	        mid = (i + j) / 2; //div
	        
	        if ((j - i) > 5){
	            if (((x[mid] < pivot) && (x[mid] > x[i])) || ((x[mid] > pivot) && (x[mid] < x[i]))){
		            swap(x + mid, x + j);
	            } else {
	                if (((x[i] < x[mid]) && (x[i] > pivot)) || ((x[i] > x[mid]) && (x[i] < pivot)))
		                swap(x + i, x + j);
	            }
	        }
	        
            pivot = x[j];
            while (i < j) {
	            while (x[i] < pivot)
	                i++;
	            j = j - 1;
	            while ((i < j) && (pivot < x[j]))
	                j--;
	            if (i < j) 
	                swap(x + i, x + j);
            }
            
            j = right[sp];
            swap(x + i, x + j);
            
            if (i - left[sp] >= right[sp] - i){
	            left[sp + 1] = left[sp];
	            right[sp + 1] = i - 1;
	            left[sp] = i + 1;
            } else {
	            left[sp + 1] = i + 1;
	            right[sp + 1] = right[sp];
	            right[sp] = i - 1;
            }
            sp++;
        }
    }
}

int main()
{
    int n = max;
    double x[max] = {2.1, 3.0, 0.3, 5.6, 2.7, 1.0, 45.9, 10.0, 94.2, 0.01};
    sort(x, n);
    return 0;
}
