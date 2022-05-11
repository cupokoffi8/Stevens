#include <iostream>
#include <stdlib.h> 
using namespace std;

class Chunk {

public:
  int value;
  Chunk *next;

  Chunk() {

    value = 0;
    next = NULL; 

  }

};

class Stack {

public:
  Chunk *top;

  Stack() {

    top = NULL; 

  }

  //1. Add things to the Stack
  void push(int x) {

    Chunk *temp = new Chunk; //Temp pointer points to a new Chunk in Stack 
    temp->value = x; //Chunk is defined as x 

    if(top == NULL) {
      top = temp;
    }
    else {
      temp->next = top;
      top = temp;
    }

    cout << "Just added: " << x << " to the Stack\n";  

  }
  
  //2. Delete an item from the Stack
  void pop() {

    if(top == NULL) {
      cout << "Nothing to delete\n";
    }
    else {
      Chunk *temp;
      temp = top; //Set the address of the first item to top
      top = temp->next; //Move top to the next chunk
      cout << "About to delete: " << temp->value << endl;
      delete temp; 
    }

  }

  //3. Display contents of the Stack

  void display() {
    Chunk *temp = top;

    while(temp != NULL) {
      cout << temp->value << "--->";
      temp = temp->next;
    }
    cout << "NULL" << endl; 
  }
  
}; 

int main() {

  Stack myStack;
  int choice, x;

  while(1) {
    cout << "Press 1 to add (push) to Stack\n"
	 << "Press 2 to remove (pop) from Stack\n"
	 << "Press 3 to display contents of Stack\n"
	 << "Press anything else to quit\n";
    cin >> choice;
    
    switch(choice) {
    case 1 :
             cout << "Add what?\n";
             cin >> x;
             myStack.push(x);
             break;
    case 2 :
             myStack.pop();
             break; 
    case 3 :
             myStack.display();
             break; 
    default: 
             cout << "Goodbye!\n";
             exit(1); 
      }
    }
  return 1;
}
