#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include "sampler.h"
const int max = 10;

int done;

void swap(int* p, int* q)
{
    float hold;
    hold = *p;
    *p = *q;
    *q = hold;
}

void sort(int a[max], int n){
  int jump = n;
  int i;
  SAMPLE;
  while (jump > 1) 
  { SAMPLE;
    jump = jump / 2;
    do
    {
        SAMPLE;
	    int done = 1;
        SAMPLE;
	    for(int j = 0;SAMPLE, j < n; ++j)
	    {
            SAMPLE;
	        i = j + jump;
            SAMPLE;
	        if (a[j] > a[i])
	        {
                SAMPLE;
		        swap(&(a[j]),&(a[i]));
		        done = 0;
                SAMPLE;
	        }
            SAMPLE;
	    } SAMPLE;
	} while (done); SAMPLE;
  }
  SAMPLE;
  return;
}		

void write_arr(int a[max])
{
    for (int i = 0;i < max; ++i)
    {
        //printf("%d\n", a[i]);

    } 
}


int main(int pargc, char **argv) {
 sampler_init(&pargc, argv);

 int n = max;
 srand(time(NULL));
 int x[max];

 for(int i = 0;(i < n); ++i)
 {
     x[i] = rand() % 100;

 }
 sort( x,n );
 write_arr(x);
 }