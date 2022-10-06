#include <iostream>
using namespace std;



int main() {
	cout << "Enter a number:" << '\n'; // compute sum from a to b inclusive 5+6+7+8
    int n;
    cin >> n;
    while(n!=1){
        if(n%2==0){
            n=n/2;
            cout << n << " ";
        }
        else {
            n=n*3+1;
            cout <<n<< " ";
        }
    }
}
