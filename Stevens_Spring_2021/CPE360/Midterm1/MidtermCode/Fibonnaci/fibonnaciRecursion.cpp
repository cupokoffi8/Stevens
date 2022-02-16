#include <iostream>
using namespace std;

int getNthTermFibonnaci(int n)
{
    if (n <= 1)
    {
        return n;
    }
    else
    {
        return getNthTermFibonnaci(n - 1) + getNthTermFibonnaci(n - 2);
    }
}

int main()
{
    int num;
    int i = 0;
    cout << "How many terms do you want the Fibonnaci Series to go to?" << endl;
    cin >> num;
    cout << " Fibonnaci Series: " << endl;
    while (i < num)
    {
        cout << " " << getNthTermFibonnaci(i);
        i++;
    }
    return 0;
}