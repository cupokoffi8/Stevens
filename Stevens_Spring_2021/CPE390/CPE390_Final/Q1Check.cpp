#include <iostream> 
using namespace std; 

double prodSum(double x[], double y[], int n) {
    int prod = 1; 
    for(int i = 0; i < n; i++) {
        prod *= x[i]+y[i]; 
    }
    cout << prod << endl; 
    return 1; 
} 

int main() {
    double x[] = {1,2,4}; 
    double y[] = {5,3,2}; 

    prodSum(x,y,3); 
}