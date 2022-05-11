#include <iostream>
#include <stdlib.h> 
using namespace std;

class Node {

public:
  int value;
  Node *next;

  Node() {

    value = 0;
    next = NULL; 

  }

};

class Stack {

public:
  Node *top;

  Stack() {

    top = NULL; 

  }

  void push(int x) {

    Node *temp = new Node; 
    temp->value = x;

    if(top == NULL) {
      top = temp;
    }
    else {
      temp->next = top;
      top = temp;
    }

    cout << "Added: " << x << " to the Stack" << endl;   

  }
  
  void pop() {

    if(top == NULL) {
      cout << "Nothing to delete" << endl; 
    }
    else {
      Node *temp;
      temp = top; 
      top = temp->next; 
      cout << "About to delete: " << temp->value << endl;
      delete temp; 
    }

  }

  void printContents() {
    Node *temp = top;

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
    cout << "Press 1 to add to the Stack" << endl; 
    cout << "Press 2 to remove from the Stack" << endl; 
    cout << "Press 3 to show the  Stack" << endl; 
    cout << "Press anything else to quit" << endl; 
    cin >> choice;
    
    switch(choice) {
    case 1 :
      cout << "Add what?" << endl; 
             cin >> x;
             myStack.push(x);
             break;
    case 2 :
             myStack.pop();
             break; 
    case 3 :
             myStack.printContents();
             break; 
    default: 
      cout << "Goodbye!" << endl; 
             exit(1); 
      }
   }
}
