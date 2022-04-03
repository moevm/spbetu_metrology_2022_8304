#include <stdio.h>
#include <time.h>
#include <stdlib.h>
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
  while (jump > 1) 
  {
    jump = jump / 2;
    do
    {
	    int done = 1;
	    for(int j = 0; j < n; ++j) 
	    {
	        i = j + jump;
	        if (a[j] > a[i]) 
	        {
		        swap(&(a[j]),&(a[i]));
		        done = 0;
	        }
	    }		
	} while (done);
  }		
  return;
}		

void write_arr(int a[max])
{
    for (int i = 0; i < max; ++i)
    {
        printf("%d\n", a[i]);
    }
}


int main(){  
 int n = max;
 srand(time(NULL));
 int x[max];
 
 for(int i = 0; i < n; ++i)
   x[i] = rand() % 100;
 sort( x,n );
 write_arr(x);
}