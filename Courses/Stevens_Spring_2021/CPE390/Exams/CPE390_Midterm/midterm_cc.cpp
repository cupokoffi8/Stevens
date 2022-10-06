#include <iostream> 
using namespace std; 

void sumMult3(int a, int b) {
    int add = 1; 
    int sum = 0; 
    for(int i = add; i <= a+b; i += 3) { 
        if(i > 1) {
            cout << " + "; 
            sum += i; 
            cout << i;
        } 
        else {
            sum += i; 
            cout << i;
        }
          
    }
    cout << " = " << sum << endl; 
}

void sumprods(int a[], int b[], int len) {
    int sum = 0; 
    for(int i = 0; i < len; i++) {
        int form = ((a[i]*a[i])*b[i]) + ((b[i]*b[i])*a[i]); 
        sum += form; 
    }
    for(int j = 0; j < len; j++) {
        a[j] *= sum; 
        b[j] *= sum; 
    }

    cout << "The first " << len << " elements in the first array are: " << endl; 
    for(int k = 0; k < len; k++) {
        cout << a[k] << " "; 
    }
    cout << endl; 
    cout << "The first " << len << " elements in the second array are: " << endl; 
    for(int k = 0; k < len; k++) {
        cout << b[k] << " "; 
    }
    cout << endl; 

}

int main() {

    //Question 1
    cout << "Q1" << endl; 
    sumMult3(3, 4); 

    cout << endl; 

    //Question 2
    cout << "Q2" << endl; 
    int a[] = {2, 1, 1, 6, 5};
    int b[] = {-2, -1, 2, 4};
    sumprods(a, b, 3);

}