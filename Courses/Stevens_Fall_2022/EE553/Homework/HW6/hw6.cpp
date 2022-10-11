#include <iostream>
#include <string>
using namespace std;

class Zebra {
private:
  string name;
  static int count;

public:
  Zebra() { name = ""; }
  Zebra(string name1) {
    name = name1;
    count++;
    cout << "\nHello I am just born, my name is " << name1 << endl; 
  }
  static int getCount() { return count; }
  string getName() { return name; }
  ~Zebra() {
    count--;
    cout << "\nUgh! I am dying, the count now is " << count << endl;
  }
};

int Zebra::count = 0;

class ZebraKid : public Zebra {
public:
  ZebraKid(string name1) : Zebra(name1) {}
};

void f() {
  cout << "f() called, count is: " << Zebra::getCount << endl;
  Zebra Joker("Joker");
  Zebra Alice("Alice");
  cout << "\nJoker and Alice created, count is: " << Zebra::getCount << endl;
}

int main() {
  cout << "\n########" << endl;
  cout << "Main Problem" << endl;
  cout << "########\n" << endl;

  cout << "Get count: " << Zebra::getCount() << '\n'; // zero!
  // Creat object a with name Morgana
  Zebra a("Morgana");
  // Print the current count number of Zerba object
  cout << "\nGet count: " << Zebra::getCount() << '\n';
  // Use the function f() above
  cout << "\n"; 
  f();
  cout << "\n####\n" << endl;
  // Use the function f() above again
  f();
  cout << "\n####" << endl;
  // print out the current number of zebra
  cout << "\nGet count: " << Zebra::getCount() << '\n';
  // Get the name of the zebra object a
  cout << "\nGet name: " << a.Zebra::getName() << '\n';
  cout << "\n####\n" << endl;

  // create  ZebraKid object
  ZebraKid e("Alex");
  cout << "\n"; 
  // Use the getName() form Zebra class
  cout << "Get name: " << e.getName() << '\n';
  cout << "\nGet count: " << Zebra::getCount() << '\n';

  cout << "\n====[ end ]====\n" << endl;
  cout << "               " << endl;

  cout << " #### This is after the program is completely done #####" << endl;
  cout << " ### the last remaining object should get destructed ###" << endl;

  return 0;
}