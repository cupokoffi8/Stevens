#include <iostream>
#include <cmath>
#include <iomanip>
#include <climits>
using namespace std;

void subtractSmallest(int *a,int size){
    int smallest=INT_MAX;
    for(int i=0;i<size;i++){
        //cout<<a[i]<<" ";
        if(a[i]<smallest){
            smallest = a[i];
        }
    }
    //cout<<"\n";
    //smallest is now set
    for(int i=0;i<size;i++){
        a[i] -= smallest;
        //cout<<a[i]<<" ";
    }
}


int prod3(int a, int b){
    int product = 1;
    for(int i = a; i<=b;i++){
        if(i%3==0){
            product *= i;
        }
    }
    return product;
}


int main() { 

  int a[] = {5, 4, 9, 2};
  subtractSmallest(a, 4);  // smallest = 2 a should become {3, 2, 7, 0}
  cout<<"\n";
  cout<<prod3(4,10)<<"\n";
  cout<<prod3(5,12)<<"\n";
}
