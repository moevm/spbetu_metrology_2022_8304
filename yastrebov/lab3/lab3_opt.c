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
  {
    jump = jump / 2;
    SAMPLE;
    do
    {
	    int done = 1;
        SAMPLE;
	    for(int j = 0; j < n; ++j) 
	    {
	        if (a[j] > a[j + jump])
	        {
                float tmp=a[j];
                a[j] = a[j + jump];
                a[j + jump] = tmp;
		        done = 0;
	        }
	    }
        SAMPLE;
	} while (done);
    SAMPLE;
  }
  SAMPLE;
  return;
}		

void write_arr(int a[max])
{
    for (int i = 0; i < max; ++i)
    {
        //printf("%d\n", a[i]);
    }
}


int main(int pargc, char **argv)
{
 sampler_init(&pargc, argv);
 int n = max;
 srand(time(NULL));
 int x[max];
 SAMPLE;
 for(int i = 0; i < n; ++i)
   x[i] = rand() % 100;
 SAMPLE;
 sort( x,n );
 write_arr(x);
}