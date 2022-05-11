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

class Queue {
public: 
  Node *head; 
  
  Queue() {
    head = NULL; 
  }

  void enqueue(int x) {
    Node *temp;
    temp = new Node;
    temp->value = x; 
    
    if(head == NULL) {
      head = temp; 
    }
    else {
      Node *another;
      another = head; 
      while(another->next != NULL) {
	another = another->next;
      }
      another->next = temp;
      temp->next = NULL;
      cout << "Added: " << x << endl; 
    }

  }
  
  void dequeue() {
    if(head == NULL) {
      cout << "Empty queue, nothing to delete" << endl;
    }
    else {
      Node *temp;
      temp = head; 
      head = head->next; 
      cout << "About to delete: " << temp->value << endl;
      delete temp; 
    }

  }
  
    void printContents() {
      Node *temp;
      temp = head;

      while(temp != NULL) {
	cout << temp->value << " ---> "; 
	temp = temp->next;
      }
      cout << " NULL " << endl;
    }
  
};

int main() {

  Queue myQueue;
  int choice, x;

  while(1) {
    cout << "Press 1 to add to the queue" << endl;
    cout << "Pess 2 to remove from the queue" << endl;
    cout << "Press 3 to show the queue" << endl; 
    cout << "Press anything else to quit" << endl; 
    cin >> choice;

    switch(choice) {
    case 1 :
      cout << "Add what?" << endl;  
	cin >> x; 
      myQueue.enqueue(x);
      break; 
    case 2 :
      myQueue.dequeue();
      break;
    case 3 :
      myQueue.printContents();
      break;
    default:
      cout << "Goodbye!" << endl; 
      exit(1);
    }
  }    
}
