#include <stdlib.h>
#include "sampler.h"
 
const int max = 80;
 
void swap(int *p, int *q)
{
int hold = *p; 
*p = *q;
*q = hold;
}
 
void sort(int *a, int n)
{
SAMPLE;
int no_change;
SAMPLE;
do{
SAMPLE;
no_change = 1; 
SAMPLE;
for (int j = 0; j < n - 1; j++) 
{
SAMPLE;
if (a[j] > a[j+1]) 
{
SAMPLE;
swap(&a[j], &a[j + 1]);
SAMPLE;
no_change = 0;
SAMPLE;
}
SAMPLE;
}
SAMPLE;
}while (!no_change);
SAMPLE;
}
int main(int argc, char ** argv)
{
sampler_init(&argc, argv);
int n = rand()%max;
int x[n]; 
for (int i = 0; i < n; i++) 
x[i] = rand()%100;
sort(x, n);
return 0;
}
