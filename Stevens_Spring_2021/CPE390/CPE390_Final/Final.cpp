#include <iostream> 
#include <cmath> 
using namespace std; 

void deltaEncode(double arr[], int length) {
    double prevVal = arr[0]; 
    for(int i = 0; i < length-1; i++) {
        double newVal = 0; 
        newVal = prevVal - arr[i+1]; 
        prevVal = arr[i+1]; 
        arr[i+1] = abs(newVal); 
    }
} 

void printArray(double arr[], int length) {
    for(int i = 0; i < length; i++) {
        cout << arr[i] << " "; 
    }
}

int main() {

    double x[] = {1.5, 2.6, 3.7, 4.8, 5.95}; 

    cout << "Original x: ";
    printArray(x, 5); 
    deltaEncode(x, 5); 
    cout << endl; 
    cout << "Printing x: "; 
    printArray(x, 5); 
    cout << endl; 

}
