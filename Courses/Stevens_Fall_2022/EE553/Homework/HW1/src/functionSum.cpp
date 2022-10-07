#include "functionSum.h"

using namespace std;

/*
Problem1:
=========

Write C++ code that sum the numbers from 1 to 100

Problem2:
=========

a. Write C++ code that sum reciprocals (1/1 + 1/2 + … + 1/99 + 1/100)
b. Write C++ code that sum reciprocals (1/100 + 1/99 + ... 1/2 + 1/1)

compare a and b

Problem3:
=========
a. Write C++ code that sum multiplication reciprocals (1/1*1 + 1/2*2 + … ) \
b. Write C++ code that sum reciprocals (1/100*100 + 1/99*99 + ... )

*/

int sumUpTo(int x)
{
    // write your code here
    int sum = 0;
    for (int i = 1; i < x + 1; i++)
    {
        sum += i;
    }
    return sum;
}

float sumReciprocalNormal(int x)
{
    // write your code here
    float i, sum = 0;
    for (i = 1; i < x + 1; i++)
    {
        sum += (1 / i);
    }
    return sum;
}

float sumReciprocalRev(int x)
{
    // write your code here
    float i, sum = 0;
    for (i = x; i > 0; i--)
    {
        sum += (1 / i);
    }
    return sum;
}

float sumMysteryNormal(int x)
{
    // write your code here
    float i, sum = 0;
    for (i = 1; i < x + 1; i++)
    {
        sum += (1 / (i * i));
    }
    return sum;
}

float sumMysteryRev(int x)
{
    // write your code here
    float i, sum = 0;
    for (i = x; i > 0; i--)
    {
        sum += (1 / (i * i));
    }
    return sum;
}
