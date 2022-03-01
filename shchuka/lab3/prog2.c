#include <stdio.h>
#include <stdlib.h>
#include "sampler.h"

void swap(float* x, float* y)
{
    float temp;
    temp = *x;
    *x = *y;
    *y = temp;
}

void shellsort(float arr[], int num)
{
    SAMPLE;
    int i, j, k;
    float* tmp;
    SAMPLE;
    for (i = num / 2; i > 0; i = i >> 1)
    {
    	SAMPLE;
        for (j = i; j < num; ++j)
        {
            SAMPLE;	
            for (k = j - i; k >= 0; k = k - i)
            {
            	tmp = arr + k;
            	SAMPLE;
                if (*(tmp + i) >= *(tmp))
                {
                    SAMPLE;
                    break;
                }
                else
                {
                    SAMPLE;
                    swap(tmp, tmp + i);
                    SAMPLE;
                }
                SAMPLE;
            }
            SAMPLE;
        }
        SAMPLE;
    }
    SAMPLE;
}


int main(int argc, char **argv)
{
    sampler_init(&argc, argv);
    const int num = 200;
    float my_max = 100.0;
    float arr[num];
    int k;

    for (k = 0; k < num; k++)
    {
        arr[k] = (float)rand() / (float)(RAND_MAX / my_max);
    }
    
    SAMPLE;
    shellsort(arr, num);
    SAMPLE;
    return 0;
}
