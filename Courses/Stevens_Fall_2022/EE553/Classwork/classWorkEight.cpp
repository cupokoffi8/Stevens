#include <iostream>  
using namespace std;
class Pet {
		public:
		virtual void makeNoise() {
			cout << "Breathing" << endl;
		}
	};
	class Dog :public Pet {
	public:
		void makeNoise() 	{
			cout << "Barking" << endl; 
		}
	};
  class Cat :public Pet {
	public:
		void makeNoise() 	{
			cout << "Meowing" << endl; 
		}
	};
	int main() {
		Pet* a;   
		Dog d; 
    Cat c; 
		a = &d;
		a->makeNoise();  
    a = &c; 
    a->makeNoise(); 
	}