#include <iostream>
#include "classComplex.h"

using namespace std;
// This part of creating typical class is commented because we are defining class in header file in addition to }; at the end
// in addition we need to indent function and indicate from which file it is coming e.g. std::cout.
// so we will use class name in .h file as: Complex::functionName(){}
// class Complex {
//    float real, img;
// public:

Complex::Complex() {
    real = 0; img = 0;
}
Complex::Complex(float r , float i)
{
    real = r;
    img = i;
}
void Complex::set()
{ // you can do set_real and another one for set_img
    // leave it empty, not required in the assignment
    // set mean change the current value
}
void Complex::get()
{ // you can do get_real and another one for get_img
    // leave it empty, not required in the assignment
    // get mean return the current value and not print
}
void Complex::display()
{
    // display function print complex number as real +j (imaginary)
    cout << real << " + j" << img << endl;
}

void Complex::print()
{
    // this function is read only print complex number as real imaginary with space between two value
    cout << real << " + " << img << "i" << endl;
}

Complex Complex::negative()
{
    // this function return the negative complex number
    Complex Negative;
    Negative.real = -1 * real;
    Negative.img = -1 * img;
    return Negative;
}

Complex mul(Complex c1, Complex c2)
{
    // this function perform complex multiplication and return the value
    Complex Mult;
    Mult.real = c1.real * c2.real - c1.img * c2.img;
//    real = Mult.real;
    Mult.img = c1.real * c2.img + c1.img * c2.real;
//    img = Mult.img;
    return Mult;
}
Complex add(Complex c1, Complex c2)
{
    // this function perform complex addition and return the value
    c1.real += c2.real;
//    real = c1.real;
    c1.img += c2.img;
//    img = c1.img;

    return c1;
}
Complex sub(Complex c1, Complex c2)
{
    // this function perform complex subtraction and return the value
    Complex result;

    result.real = c1.real - c2.real;
//    real = result.real;
    result.img = c1.img - c2.img;
//    img = result.img;

    return result;
}

Complex operator+(Complex c1, Complex c2) {
    // Overload (+) operation
    // write your code here
    return Complex(c1.real + c2.real, c1.img + c2.img);
}
//Complex operator+(Complex c2)
//{
//    // Overload (+) operator
//    Complex temp;
//    temp.real = real + c2.real;
//    temp.img = img + c2.img;
//
//    return temp;
//
//}

ostream &operator<<(ostream &ostr, Complex c)
{
    // Overload (<<) operator  to display complex number as real +j (imaginary)
    char pm;
    float i = c.img;
    if (c.img < 0)
    {
        pm = '-';
        i *= -1;
    }
    else
    {
        pm = '+';
    }
    ostr << c.real << ' ' << pm << ' ' << i << 'i';
    return ostr;
}
