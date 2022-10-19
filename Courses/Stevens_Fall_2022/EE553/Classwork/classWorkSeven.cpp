#include <iostream>
#include <string>
using namespace std;

class Car {
private:
  int model;
  int year;
  string color;
  static int count;

public:
  void setModel(int m);
  int getModel();

  void setYear(int m);
  int getYear();

  void setColor(string m);
  string getColor();

  Car() {
    count++;
    cout << "\nUndetermined car created, count is now " << getCount() << endl;
    this->model = 0;
    this->year = 0;
    this->color = "NONE";
  }

  Car(int m, int y, string c) {
    this->model = m;
    this->year = y;
    this->color = c;
    count++;
    cout << "\nCar number " << getCount()
         << " created with model: " << this->model << ", year: " << this->year
         << ", and color: " << this->color << endl;
  }

  static int getCount() { return count; }

  ~Car() {
    count--;
    cout << "\nCount is " << count << endl;
  }

  friend ostream &operator<<(ostream &s, Car &b) {
    s << "CAR: [" << b.getColor() << " " << b.getModel() << " " << b.getYear()
      << "]" << endl;
    return s;
  }
};

int Car::count = 0;

void Car::setModel(int m) {
  model = m;
  cout << "\nSetting vehicle model to " << model << endl;
}

int Car::getModel() { return model; }

void Car::setYear(int m) {
  year = m;
  cout << "\nSetting vehicle year to " << year << endl;
}

int Car::getYear() { return year; }

void Car::setColor(string m) {
  color = m;
  cout << "\nSetting vehicle color to " << color << endl;
}

string Car::getColor() { return color; }

class Truck : public Car {
public:
  Truck() : Car() { cout << "Wait it's a truck!\n"; }
  Truck(int m, int y, string c) : Car(m, y, c) {
    cout << "Wait it's a truck!\n";
  }
  friend ostream &operator<<(ostream &s, Truck &b) {
    s << "TRUCK: [" << b.getColor() << " " << b.getModel() << " " << b.getYear()
      << "]" << endl;
    return s;
  }
};

int main() {
  Car c1, c2, c3;

  Car c4(70, 2021, "Black");

  Truck t1;

  c1.setModel(4);
  c1.setYear(2006);
  c1.setColor("Green");
  c2.setModel(8);
  c2.setYear(2000);
  c2.setColor("Red");
  c3.setModel(5);
  c3.setYear(2011);
  c3.setColor("Silver");

  cout << "\n";

  Truck t2(150, 2008, "Black");

  cout << "\n";
  cout << "\nMazda Dealership Stock: \n";
  cout << "=======================\n" << endl;
  cout << c1;
  cout << c2;
  cout << c3;
  cout << c4;
  cout << t1;
  cout << t2;
  cout << "\n======================\n" << endl;
  cout << "\n";

  cout << "---------------------" << endl;
  cout << "Number of vehicles: ";
  cout << "\033[1m\033[35m" << Car::getCount() << endl;
  cout << "\033[1m\033[0m"
       << "---------------------" << endl;
  cout << "\n";
}