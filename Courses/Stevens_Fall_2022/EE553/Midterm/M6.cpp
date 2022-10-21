#include <iostream>
using namespace std;

class Triangle {

public:
  float width, height;

public:
  Triangle() {
    
  }
  Triangle(float a, float b) {
    this->width = a;
    this->height = b; 
  }

float area();
  
};

float Triangle::area() { return (width * height / 2); }

int main() {

  Triangle tri(2, 5);

  cout << tri.area() << endl;

  Triangle *tri_p=&tri; 
  cout << tri_p->area(); 

  return 0;
}