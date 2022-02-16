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

class Queue {
public: 
  Chunk *head; 
  
  Queue() {
    head = NULL; 
  }
  //1. Add something to the Queue (enqueue)
  void enqueue(int x) {
    Chunk *temp;
    temp = new Chunk;
    temp->value = x; 
    
    if(head == NULL) {
      head = temp; 
    }
    else {
      Chunk *another;
      another = head; //start at the beginning
      while(another->next != NULL) {
	another = another->next;
      }
      //When we are at the end, we want to make this new chunk (temp) the last one
      another->next = temp;
      temp->next = NULL;
      cout << "Just added: " << x << endl; 
    }

  }
  
  //2. Remove something from the Queue (dequeue)
  void dequeue() {
    if(head == NULL) {
      cout << "Empty queue, nothing to delete" << endl;
    }
    else {
      Chunk *temp;
      temp = head; //grab the address of the first chunk
      head = head->next; //head moves to the next chunk
      cout << "About to delete: " << temp->value << endl;
      delete temp; 
    }

  }
  
  //3. Display function 
    void display() {
      Chunk *temp;
      temp = head;

      while(temp != NULL) {
	cout << temp->value << " ---> "; 
	temp = temp->next;
      }
      cout << " NULL " << endl;
    }
  
};

int main() {

  Queue Q;
  int choice, x;

  while(1) {
    cout << "Press 1 to enqueue" << endl;
	  cout << "Pess 2 to dequeue" << endl;
	  cout << "Press 3 to display" << endl; 
	  cout << "Press anything else to quit" << endl; 
    cin >> choice;

    switch(choice) {
    case 1 :
      cout << "Add what?" << endl;  
	cin >> x; 
      Q.enqueue(x);
      break; 
    case 2 :
      Q.dequeue();
      break;
    case 3 :
      Q.display();
      break;
    default:
      cout << "Goodbye!" << endl; 
      exit(1);
    }
  }    
}
