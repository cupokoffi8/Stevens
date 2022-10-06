#include <iostream>
using namespace std;

double mean(const double a[], int n){
	double sum = 0;
	for(int i =0 ;i<n;i++)
		sum += a[i];
	return sum/n;
}

int main() {
	double x[] = {1.0, 2.5, 3.0, 4.5};
	cout << mean(x, 4) << '\n';
	return 0;
}

