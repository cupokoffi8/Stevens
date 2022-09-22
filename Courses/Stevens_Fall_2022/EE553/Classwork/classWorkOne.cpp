#include <iostream>
#include <stdlib.h>
using namespace std;

// Check if number is even
bool isEven(int num) {
  if (num % 2 == 1) {
    return false;
  } else {
    return true;
  }
}

// Let user create array
int inputArray(int n) {
  cout << "\033[35m"
       << "Please, tell me how many numbers you want in this array: \n"
       << endl;
  cout << "\033[0m";
  cin >> n;
  cout << "\n";

  int arr[n];

  cout << "\033[35m"
       << "Now tell me what each value is: \n"
       << endl;
  for (int i = 0; i < n; i++) {
    int value;
    cout << "\033[35m"
         << "For value number " << i + 1 << ": " << endl;
    cout << "\033[0m";
    cin >> value;
    cout << "\n" << endl;

    arr[i] = value;
  }

  int numEven = 0;

  cout << "\033[35m"
       << "Here is the array you made: \n"
       << endl;
  cout << "\033[1m\033[33m"
       << "[ ";
  for (int i = 0; i < n; i++) {
    cout << "\033[1m\033[33m" << arr[i] << " ";
    int checkEven = arr[i];
    (isEven(checkEven)) && numEven++;
  }
  cout << "\033[1m\033[33m"
       << "]\n"
       << endl;

  if (numEven > 1) {
    cout << "\033[32m"
         << "\nArray has " << numEven << " even numbers\n";
  } else if (numEven == 1) {
    cout << "\033[32m"
         << "\nArray has " << numEven << " even number\n";
  } else {
    cout << "\033[37m"
         << "\nArray has no even numbers\n";
  }

  return 0;
}

int main() {
  int n;
  inputArray(n);
}
