//Michael Dasaro
#include <iostream>
using namespace std;

//1
void printOdd()
{
    for(int i = 51;i<=97;i+=2)
    {
        cout<<i<<" ";
    }
}

//2
void printSum(int a, int b)
{
    int sum = 0;
    for(int i = a;i<=b;i++)
    {
        sum+=i;
    }
    cout<<"\nThe sum from "<<a<<" to "<<b<<" is "<<sum;
}
int main(){
    printOdd();
    printSum(15,17);
}

/*3         
mov  r0, #4
subs r0, #5    @ Z = 0   N = 1
cmp  r0, #4    @ Z = 0   N = 1
bne  1f
beq  2f                 @doesn't break because not equal

1:
   addeq r0, r0, r0     @Doesn't run because Z does not equal 1
   bx    lr

2:
   addne r0, #4         @never gets here
   bx lr

@What is r0?  r0 is still -1


4. Write a loop to count down in ARM assembler from r0
@r0 = the number of times to iterate
countdown:
subs r0, #1
bne countdown
bx lr
*/
