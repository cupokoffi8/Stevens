#ifndef CLASSCOMPLEX_H
#define CLASSCOMPLEX_H

#include <iostream>

using namespace std;
// Define prototype for class only here
class Complex {
//Private:
    float real, img;
public:
    Complex();
    Complex(float r, float i);
    void set();
    void get();
    void display();
    void print();
    Complex negative();
    // keep all frind prototype defined here and outside class too
    friend Complex mul(Complex c1, Complex c2);
    friend Complex add(Complex c1, Complex c2);
    friend Complex sub(Complex c1, Complex c2);
    // Overload operator
    friend ostream& operator<<(ostream& ostr, Complex c);
    friend Complex operator+(Complex c1, Complex c2);
};

Complex mul(Complex c1, Complex c2);
Complex add(Complex c1, Complex c2);
Complex sub(Complex c1, Complex c2);
Complex operator+(Complex c1, Complex c2);
ostream& operator<<(ostream& ostr, Complex c);

#endif
