#include <stdlib.h>

const int max = 80;

void swap(int *p, int *q)
{
    int hold = *p; 
    *p = *q;
    *q = hold;
}

void sort(int *a, int n)
{
  int no_change;
  do{
    no_change = 1; 
    for (int j = 0; j < n - 1; j++) 
    {
      if (a[j] > a[j+1]) 
      {
        swap(&a[j], &a[j + 1]);
        no_change = 0;
      }
    }
  }while (!no_change);
}
int main()
{
    int n = rand()%max;
    int x[n]; 
  for (int i = 0; i < n; i++) 
    x[i] = rand()%100;
  sort(x, n);
  return 0;
}
