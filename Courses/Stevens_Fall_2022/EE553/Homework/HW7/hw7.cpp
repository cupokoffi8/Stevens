#include <iostream> 
#include <fstream> 
#include <cmath> 
#include <vector> 
using namespace std; 

class Postscript {

private:
  string file; 
  ofstream stream;

public:
  Postscript(string const &file); 

  void rect(double x, double y, double w, double h); 

  void fillrect(double x, double y, double w, double h); 

  void circle(double x, double y, double r); 

  void rgb(int num1, int num2, int num3); 
};

Postscript::Postscript(string const &file) : file(file) {

  stream.open(file, ofstream::out | ofstream::app); 
  
} 

void Postscript::rgb(int num1, int num2, int num3) {
  stream << num1 << " " << num2 << " " << num3 << " " << "setrgbcolor\n"; 
}
void Postscript::rect(double x, double y, double w, double h) {

  stream << x << " " << y << " moveto\n"
         << x + w << " " << y << " lineto\n"
         << x + w << " " << y - h << " lineto\n"
         << x << " " << y - h << " lineto\n"
         << "closepath\nstroke\n";
}
void Postscript::fillrect(double x, double y, double w, double h)
	{
	stream <<x<<' '<< y <<" moveto \n"
		     <<x+w<<' '<<y<<" lineto \n"
		     <<x+w<<' '<<y-h<<" lineto \n"
		     <<x<<' '<<y-h<<" lineto \n"
		     <<"closepath \n"
		     <<"fill\n";
	} 
void Postscript::circle(double x, double y, double r)
  	{
	    stream << x << ' ' << y << ' ' << r << ' ' << "0" << ' ' <<         "360" << ' ' << "arc \n"
	    <<"stroke\n";
	}

class Shape {

protected:
  double x;
  double y;  

public:

string shapeName; 

  Shape(double xcoord = 0, double ycoord = 0) : x(xcoord), y(ycoord) {
    this->shapeName = ""; 
  }

  virtual double area() {
    return 0; 
  } 

  virtual void print(string file) {} 

  friend ostream &operator<<(ostream &s, Shape &ss) {
    s << ss.area() << endl;
    return s;
  }

  ~Shape() {} 
};

class Rect : public Shape { 
double width, height; 

public:
  Rect(double x, double y, double w, double h) : Shape(x,y), width(w), height(h){
    this->shapeName = "Rectangle";
  }

  double area() override{ return width * height; } 

  void print(string file) override{
    Postscript p(file);
    p.rect(x, y, width, height);
  }

  ~Rect() {} 
};

class FilledRect : public Shape { 
double width, height; 

public:
  FilledRect(double x, double y, double w, double h) : Shape(x,y), width(w), height(h){
    this->shapeName = "Filled Rectangle"; 
  }

  double area() override{ 
    return width * height; 
    } 

  void print(string file) override{
    Postscript p(file);
    p.fillrect(x, y, width, height);
  }

  ~FilledRect() {} 
};

class Circle : public Shape {

private:  
  double radius;
public:
  Circle(double x, double y, double rad) : Shape(x,y), radius(rad){
    this->shapeName = "Circle"; 
  }

  double area() override{
    double pi = 3.14159;
    return pi * pow(radius,2);
  } 

  void print(string file) override{
    Postscript p(file); 
    p.circle(x, y, radius); 
  }

  ~Circle() {} 
}; 

class Drawing {
    private:
        string file; 
        vector<Shape*> Polymorphism;

    public:
        Drawing(string filename) : file(filename) {}

        void setrgb(int num1, int num2, int num3) {
          Postscript p(file);
          p.rgb(num1, num2, num3); 
        }
        void add(Shape* s) {
          Polymorphism.push_back(s);
        }
        void draw() {
          for (int i = 0; i < Polymorphism.size(); i++) {
          Polymorphism[i]->print(file); 
          }
        }
        void showArea() {
          for (int i = 0; i < Polymorphism.size(); i++) {
          cout << "Area of " << Polymorphism[i]->shapeName << ": " << Polymorphism[i]->area() << endl;  
          }
        } 
    }; 

int main() {
    cout << "########" << endl;
    cout << "Main Problem" << endl;
    cout << "########\n" << endl;

    Drawing d("test.ps"); 

    d.setrgb(1, 0, 0); 
 
    d.add(new FilledRect(100.0, 550.0, 200.0, 50)); 
    d.add(new Rect(200.0, 650.0, 200.0, 50));      
    d.add(new Circle(300,300, 100)); 
  
    d.draw(); 

    d.showArea(); 

    cout << "\n====[ end ]====" << endl;
    cout << "               " << endl;
}
