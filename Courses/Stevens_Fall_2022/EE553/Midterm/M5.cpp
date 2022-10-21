#include <cmath>
#include <iostream>
using namespace std;

class Calculator {
  double num1, num2;

public:
  double add() { return num1 + num2; }
  double subtract() { return num1 - num2; }
  double multiply() { return num1 * num2; }

  double divide() {
    if (num2 == 0) {
      cout << "Can't divide by 0!" << endl;
      return 0;
    } else {
      return num1 / num2;
    }
  }

  void getValues() {
    cout << "Please give me the first value: ";
    cin >> num1;
    cout << "Now the second value: ";
    cin >> num2;
  }
};

int main() {

  Calculator c;
  cout << "1 for addition\n";
  cout << "2 for subtraction\n";
  cout << "3 for multiplication\n";
  cout << "4 for division\n";
  cout << "Anything else to quit" << endl;

  int choice;
  cout << "\nEnter Choice: ";
  cin >> choice;

  switch (choice) {
  case 1:
    c.getValues();
    cout << "Answer is " << c.add() << endl;
    break;
  case 2:
    c.getValues();
    cout << "Answer is " << c.subtract() << endl;
    break;
  case 3:
    c.getValues();
    cout << "Answer is " << c.multiply() << endl;
    break;
  case 4:
    c.getValues();
    cout << "Answer is " << c.divide() << endl;
    break;
  }

  return 0;
}
