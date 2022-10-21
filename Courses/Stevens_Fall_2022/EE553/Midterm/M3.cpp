#include <iostream>
using namespace std;

class Shape{

public:
  int l, w;

void set_values(int l, int w) {
  this->l=l; 
  this->w=w;
  }

void show_data() {
  cout<<l<<endl;
  cout<<w<<endl;
  }
  float area () {}
}; 

class Rect: Shape{
public:
  float area (){
    return (l*w); 
  }
};

int main() {
  
  Rect r; 
  r.set_values(2,3); 

  r.show_data(); 

  Shape *s=&r; 
  s->area(); 

  return 0; 
}