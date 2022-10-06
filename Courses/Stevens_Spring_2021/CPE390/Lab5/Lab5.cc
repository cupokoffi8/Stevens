#include <iostream>
extern int setBit(int a, int b);
extern int clearBit(int a, int b);
extern int flip(int a, int b);
extern int replaceBits(int a, int b, int c);
extern int buildColor(int r, int g, int b);
extern double choose(int a, int b);
using namespace std;
int main() {
	int answer = setBit(5, 8);
	// take the number 5 000000000000000000000000000000101 and set bit 8 from the right (rightmost bit is position 0)
	//                   000000000000000000000000100000000
	// (use OR)
	//                   000000000000000000000000100000101
	// result should be 256 + 5 = 261
	cout << answer << '\n';

	// for the following tests figure out what the answer should be, make sure your code is right!
	cout << setBit(17, 9) << '\n'; 	//529
	cout << setBit(1, 31) << '\n';	//-2147483647

/* Same as above but this time clear the bit. This can be done by anding with the inverse
 */
answer = clearBit(1023, 5);
// 1023 = 00000000000000000000001111111111
// 1 =    00000000000000000000000000000001
// shift left to position 5
//        00000000000000000000000000100000
// invert 11111111111111111111111111011111
// AND    00000000000000000000001111011111
cout << answer << '\n';  	//991

// tests
	cout << clearBit(0x000F8F8F, 7) << '\n'; 	//1019663
	cout << clearBit(0x8A5A5A5A, 31) << '\n';	//-1973790118

/*
Note: There is an ARM instruction that combines and and not. 
It is called BIC (bit clear)
*/

	answer = flip(0xF0008000,15); // flip the 15th bit
// start with the number
// 1111 0000 0000 0000 1000 0000 0000 0000
// shift a 1 as usual from the right to the 15th position
// 0000 0000 0000 0000 1000 0000 0000 0000
// this time use XOR. If the bit is 1, then 1 XOR 1 becomes 0
// if the bit is 0, then 0 xor 1 becomes 1
  cout << hex << answer << '\n'; // should be 0xF00000000
  answer = flip(answer,15); // now it should be back to the original
  cout << hex << answer << '\n';


// wipe out the last 3 hex digits of the first number by anding with the second
// then replace with the numbers 0x123
  answer =  replaceBits(0xF0F0A5A5, 0xFFFFF000, 0x123);
  cout << hex << answer << '\n'; // should be 0xF0F0A123

	/*
		given 3 values r, g, b, write a function buildColor to construct
		a single integer where the 32 bit integer, in hex is:
		0x00rrggbb
		the high byte is zero, the next is red, the next is green, 
		and the last is blue.
	*/
	cout << hex << buildColor(255, 0, 0) << '\n'; // should be 0x00FF0000
	cout << hex << buildColor(0, 255, 0) << '\n'; // should be 0x0000FF00
	cout << hex << buildColor(0, 0, 255) << '\n'; // should be 0x000000FF
	cout << hex << buildColor(128, 128, 128) << '\n'; // should be 0x00808080
}
