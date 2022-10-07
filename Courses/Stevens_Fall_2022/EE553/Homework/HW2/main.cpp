#include <cmath>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <string> 
#include <iomanip> 
#include <math.h>
#include <stdio.h> 
#include "functionWind.h"
#include "functionPrime.h"

using namespace std; 

  // Problem 2 
  double pi = 3.141592653589793; 

  double convertToRadians(double angle) {
      return (angle * (pi / 180));
    } 

  double findCartesian(double r, double theta) { 
    double x, y; 

    x = r*(cos(theta)); 
    y = r*(sin(theta)); 

    cout << setprecision(8) << endl; 
    cout << "X: " << x; 
    cout << setprecision(8); 
    cout << ", Y: " << y << endl; 

    return 0; 
  }

int main() {
  cout << "###########" << endl;
  cout << "Problem One" << endl;
  cout << "###########" << endl; 
  cout << "\n"; 
  // For problem one, you only need to write your code in "functionPrime.cpp"

  isPrime(19);
  cout << '\n';

  isPrime(81); // trial divide, 81%3 == 0 therefore not prime
  cout << '\n';

  isPrime(57); // 57 % 2, 57% 3, 57%4
  cout << '\n';

  cout << "====[ end ]====" << endl; 
  cout << "\n"; 

  cout << "###########" << endl;
  cout << "Problem Two" << endl;
  cout << "###########" << endl;
  cout << "\n"; 
  // For problem Two, you will need to write your code here
  // first read file robotpath.dat and name it thefile by using fstream
  // make sure you use the full path to .dat file, e.g., .././src/robotpath.dat 

  fstream thefile; 
  thefile.open("./src/robotpath.dat"); 

  // check if thefile exist or not
  if (thefile.is_open()) {

    cout << "File is open and ready" << '\n';
    cout << " " << '\n';

  } else {
    cout << "File not found!" << '\n';
    cout << " " << '\n';
  }

  // define your variables each line r and theta from the polar coordinates
  // use defined constant pi value in your calculation
  // start reading file and do calculation 
  
    ifstream inputFile("./src/robotpath.dat"); 
  
    double r, theta;

    while (inputFile >> r >> theta)
    { 
      cout << "------------------------" << endl; 
      cout << r << " meters, " << theta << " degrees";  
      theta = convertToRadians(theta); 
      cout << "\n"; 
      cout << r << " meters, " << theta << " radians" << endl; 
      findCartesian(r, theta); 
      cout << "------------------------"; 
      cout << "\n"; 
    }  

  cout << "\n"; 

  thefile.close(); 
  inputFile.close(); 

  cout << "====[ end ]====" << endl; 
  cout << "\n"; 

  cout << "###########" << endl;
  cout << "Problem Three" << endl;
  cout << "###########" << endl; 
  cout << "\n"; 
  // Write your code here
  // before you write here, write windChillFactor  in     "functionWind.cpp" 

  // use Boolean CanRun to decide to do calculation or not based on condition 
  while(1) {
  char res; 

  cout << "====================================================" << endl; 
  cout << "Would you like to calculate wind chill factor? (y/n)" << endl; 
  cout << "====================================================" << endl; 
  cin >> res; 
  cout << "\n"; 

  switch(res) {    
  case 'y':    
    runCalculator(); 
    cout << "\n"; 
    break;

  default:    
    cout << "Enjoy the weather!" << endl; 
    cout << "\n"; 
    cout << "====[ end ]====" << endl;
    exit(1); 
    
      }    
    }


  return 0;
}
