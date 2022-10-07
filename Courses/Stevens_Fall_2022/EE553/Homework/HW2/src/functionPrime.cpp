#include <cmath>
#include <cstdlib>
#include <iostream>
#include <string>
#include <math.h>
#include <stdio.h>

using namespace std;

bool checkPrime(int x) {
    for (int i = 2; i < x; i++)
        if (x % i == 0) {
            return true;
        }
    return false;
}

void isPrime(int x) {

    if (x <= 1) {
        cout << x << " is less than or equal to one" << endl;
    }
    else if (checkPrime(x)) {
        cout << x << " is not prime" << endl;
    }
    else {
        cout << x << " is prime" << endl;
    }
}
