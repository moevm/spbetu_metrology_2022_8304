// Online C compiler to run C program online
#include <stdio.h>
#include <time.h>
#include <stdlib.h>
int max = 80;

void swap(int *p, int *q){
    int hold;
    hold = *p; 
    *p = *q; 
    *q = hold;
}

void sort(int x[max], int n){
    int left[20], right[20], i, j, sp, mid;
    float pivot;
    left[0] = 0; 
    right[0] = n - 1; 
    sp = 0; 

    while (sp > -1){ 
        if (left[sp] >= right[sp]){
            sp--;
        }  
        else {
            i = left[sp]; 
            j = right[sp]; 
            pivot = x[j]; 
            mid = (i + j) / 2; 
            if ((j - i) > 5){
                if (((x[mid] < pivot) && (x[mid] > x[i])) || ((x[mid] > pivot) && (x[mid] < x[i]))){ 
                    swap(&(x[mid]), &(x[j]));
                }
                else if(((x[i] < x[mid]) && (x[i] > pivot)) || ((x[i] > x[mid]) && (x[i] < pivot))){
                    swap(&(x[i]), &(x[j])); 
                }
            } 
         
            pivot = x[j]; 
    
        while (i < j){ 
            while (x[i] < pivot){
                i++; 
            }
            
            j--;
            
            while ((i < j) && (pivot < x[j])){ 
                j--; 
            }
            
            if (i < j){
                    swap(&(x[i]), &(x[j]));
                } 
        } 
        
        j = right[sp];
        
        swap(&(x[i]), &(x[j])); 
        
        if (i - left[sp] >= right[sp] - i){  
            left[sp + 1] = left[sp]; 
            right[sp + 1] = i - 1; 
            left[sp] = i + 1;
        }
        else{
        left[sp + 1] = i + 1; 
        right[sp + 1] = right[sp]; 
        right[sp] = i - 1 ;
        }
        
        sp++;
        }
    }
}


int main() {
    int n = max;
    int x[n];
    
    srand(time(NULL));
    
    for (int i = 0; i < n; i++){
    x[i] = rand()%100;
    }
    
    sort(x, n);
    
    for(int i = 0; i < n; i++){
        printf("%d ", x[i]);
    }
    
    return 0;
}