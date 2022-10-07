#include <cmath>
#include <cstdlib>
#include <iostream>
#include <string> 
#include <math.h>
#include <stdio.h> 
#include "functionWind.h"


using namespace std;

bool canRun(double v, double t) {
  if(v > 3 && t <= 50) 
  { return true; } 
  else 
  { return false; } 
  }

  double windChillFactor (const double &v, const double &t)
  { 
    double w; 
      // Write your code here
      // define wind chill w
      // write your equation and return w double only
      double power = pow(v, 0.16); 
      w = 35.74 + (0.6215*t) - (35.75*power) + (0.4275*t*power); 

    return w; 
  } 

  void runCalculator() {
    double v, t; 
    
    cout << "Please tell me the wind speed (in mph): \n"; 
    cin >> v; 
    cout << "\n"; 

    cout << "Now tell me the temperature (in degrees F): \n"; 
    cin >> t; 
    cout << "\n"; 

    if(canRun(v, t)) { 
      cout << "Wind chill factor with wind speed of " << v << " mph and temperature of " << t << " degrees F is: " << windChillFactor(v, t) << endl; 
      } else {
      cout << "Lucky for you, the wind chill at these conditions is negligible." << endl; 
      }
  }