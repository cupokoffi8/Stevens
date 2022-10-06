//Michael Dasaro
# include <iostream>
# include <limits.h>
using namespace std;
int setBit(int a, int b)
{
    int shift = 1;
    shift = shift << b;
    return shift | a;
}
 int clearBit(int a, int b)
 {
     int bit = 1;
     bit = bit << b;
     int max = INT_MAX;
     int flip = ~bit;
     return a & flip;

 }
 int flip(int a, int b)
 {
     int shift = 1;
     shift = shift << b;
     return a ^ shift;
 }
 int replaceBits(int a, int b, int c)
 {
     return (a & b) | c;
 }
 int buildColor(int r, int g, int b)
 {
     int color = 0;
     int red = r << 16;
     int green = g << 8;
     int blue = b;
     color = red | green | blue;
     return color;
 }
 double choose(int a, int b)
 {
     int difference = a-b;
     double numerator = 1;
     for(a;a>difference;a--)
     {
         numerator *= a;
     }
     double denominator = 1;
     for(int i = 1;i<=b;i++)
     {
         denominator *= i;
     }
     return numerator/denominator;
 }
