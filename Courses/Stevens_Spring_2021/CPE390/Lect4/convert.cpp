#include <iostream>
using namespace std;
int f(int x) {
	return x*x;
}
int g(int x, int y){
	return x+y;
}
int g(int n){
	int sum = 0;
	for(int i=1;i<=n;i++)
	{
		sum+=i;
	}
	return sum;
}
int main(){
	return 0;
}
