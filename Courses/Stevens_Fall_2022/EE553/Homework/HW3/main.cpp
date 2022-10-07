#include <iostream>
#include <string>
#include "functionArray.h"
#include "classComplex.h"

using namespace std;

int main()
{

    cout << "########" << endl;
    cout << "Problem One" << endl;
    cout << "########\n"
         << endl;

    // read how many number of elements you want to creat
    int n;
    cout << "Please enter number of elements: ";
    cin >> n;
    cout << "\n";

    int m;
    int *A = new int[n];
    int *e = new int[n];

    ReadElements(A, n);

    // Use function ReadElements() to read array (A) from the user with given
    // number of elements define new empty array dynamically with n number as int
    // *A = new int[n]; write your code here

    // Use function PrintElements() that can print the entered array
    // write your code here
    cout << "\n";
    cout << "==Print Array==" << endl;
    PrintElements(A, n);

    // Use function PrintElementsRev() that can print the array in reverse order
    // write your code here
    cout << "\033[1m\033[0m"
         << "==Print Reverse Array==" << endl;
    PrintElementsRev(A, n);

    // Use function OddsOnly that can print only the odd elements of the user
    // array define a null pointer *e to use it with OddsOnly function and int m
    // equal zero write your code here you can use NULL here or nullptr for *e

    // print odds array
    cout << "\033[1m\033[0m"
         << "==Print Odds Only Array==" << endl;
    OddsOnly(A, n, e, m);
    // Use function

    // do not forget
    delete[] A; // Do not forget to deallocate dynamically allocated memory
    delete[] e; // same as above

    cout << "\033[1m\033[0m"
         << "====[ end ]====\n"
         << endl;
    cout << "               " << endl;

    cout << "########" << endl;
    cout << "Problem Two" << endl;
    cout << "########" << endl;
    // Read only this part of the problem and check classComplex.cpp
    // modify Complex class to make this part run as described

    // define two complex number n1 and n2
    Complex n1(1, 2), n2(0.3, 4);
    // define complex number for different results
    Complex result1, result2, result3, result4, result5;
    //  addition
    result1 = add(n1, n2);
    cout << "sum of two complex number is: ";
    result1.print(); // complex (real +j imaginary) print ==> real imaginary
    cout << endl;
    //  addition by overloading
    result2 = n1 + n2; // overlaod (+) operation to add two complex number
    cout << "(use overload) sum of two complex number is: ";
    result2.print(); // complex (real +j imaginary) print ==> real imaginary
    cout << endl;
    //  multiplication
    result3 = mul(n1, n2);
    cout << "multiplication of two complex number is: ";
    result3.display(); // complex (real +j imaginary) display ==> real +j (imaginary)
    cout << endl;
    //  negative function
    result4 = result1.negative();
    cout << "negative of complex number is: ";
    result4.print();
    cout << endl;
    //  subtraction
    result5 = sub(n1, n2);
    cout << "subtraction fo two complex number is: ";
    cout << result5; // complex (real +j imaginary) overload operator "<<" ==> real +j (imaginary)

    cout << "====[ end ]====" << endl;
    cout << "               " << endl;
    return 0;
}