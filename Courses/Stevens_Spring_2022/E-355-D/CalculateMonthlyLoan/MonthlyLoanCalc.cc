#include <iostream>
#include <math.h>
#include <stdlib.h>
#include <string.h>
using namespace std;

void monthlyInterest() {
  double i;
  double P;
  double n;
  double A;
  double iSum=0;
  double iMinus; 
std::cout << "Please provide me with the nominal Annual Interest Rate as a percentage\n";
cin >> i;

 i=i/100;
 i=i/12; 

std::cout << "How much is the loan?\n";
cin >> P;

std::cout << "How many months will this require?\n";
cin >> n;

  iSum=1+i; 
  iSum=pow(iSum, n); 

  A=i*iSum;
  double tryThis = 1+i; 
  iMinus=pow(tryThis, n);
  iMinus=iMinus-1;

  A=A/iMinus;
  A=A*P;

std::cout << "Your monthly payment is: $" << A << endl;
}

int main() {
  monthlyInterest();

  return 0; 
}
