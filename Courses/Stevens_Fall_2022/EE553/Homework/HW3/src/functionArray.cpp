#include <iostream>

using namespace std;

// Check if number is even
bool isOdd(int num)
{
    if (num % 2 != 0)
    {
        return true;
    }
    else
    {
        return false;
    }
}

// Write functions for problem one here
void ReadElements(int *A, int n)
{
    cout << "==Please enter the elements==\n";
    for (int i = 0; i < n; i++)
    {
        cout << "\nElement " << i + 1 << ": ";
        cin >> A[i];
    }
}
void PrintElements(int *A, int n)
{
    cout << "\n";
    cout << "\033[1m\033[33m"
         << "[ ";
    for (int i = 0; i < n; i++)
    {
        cout << "\033[1m\033[33m" << A[i] << " ";
    }
    cout << "\033[1m\033[33m"
         << "]\n"
         << endl;
}
void PrintElementsRev(int *A, int n)
{
    cout << "\n";
    cout << "\033[1m\033[33m"
         << "[ ";
    int i = n - 1;
    while (i >= 0)
    {
        cout << A[i] << " ";
        i--;
    }
    cout << "\033[1m\033[33m"
         << "]\n"
         << endl;
}
void OddsOnly(int *A, int n, int *&odds, int &m)
{
    // write your code here
    m = 0;
    odds = new int[m];
    for (int i = 0; i < n; i++)
    {
        if (isOdd(A[i]))
        {
            odds[m] = A[i];
            m++;
        }
    }

    PrintElements(odds, m);
}
