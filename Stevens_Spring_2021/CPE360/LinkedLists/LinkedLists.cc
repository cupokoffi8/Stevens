#include <iostream>
#include <stdlib.h> 
using namespace std;

//First, chunk
class Chunk {
public:
  
  int info;
  Chunk *next;

  Chunk() {
    info = 0;
    next = NULL;
  }

};

//Second, a linked-list of chunks
class LinkedList {
public:

  Chunk *head;
  int count; 

  LinkedList() {

    head = NULL;
    count = 0; 

  }

  //1. ADD: insert at a *position*
  void insertAtPos(int value, int pos) {

    //First check to see if the pos is in a valid range
    if(pos > 0 && pos <= count + 1) {

      Chunk *temp;
      temp = new Chunk;
      temp->info = value; 
      
      if(pos == 1) { 

	temp->next = head; //Get new chunk to point to the current 1st
	head = temp;
	count++;
	cout << "Just added " << value << " at position 1" << endl; 
      }
    else {
      //Use helper to go to "position - 1"
      Chunk *helper = head;
      for(int i = 1; i < pos - 1; i++) {
	helper = helper->next;
      }
      temp->next = helper->next;
      helper->next = temp;
      count++;

      cout << "Just added " << value << " at position " << pos << endl; 
    }
  }

    else {
      cout << "Invalid position" << endl; 
    }
 
 }

  //2. REMOVE: delete from a position
  void deleteAtPos(int pos) {
    if(head == NULL) {
      cout << "Empty list, nothing to remove." << endl;
      return;
    }

    if(pos > 0 && pos <= count) {
      if(pos == 1) {
	//removing the first chunk
	Chunk *temp;
	temp = head;
	head = head->next;
	cout << "About to delete: " << temp->info << endl;
	delete temp;
	count--;
      }
    
      else {
	//Two pointers, chase and follow
	Chunk *chase; 
	Chunk *follow; 
	//Start them at the beginning
	chase = head;
	follow = head;
	for(int i = 1; i < pos; i++) {
	  follow = chase;
	  chase = chase->next;
	}
      follow->next = chase->next; 
      delete chase; 
      count--; 
      }
      
    }

  }

  //3. Display: standard stuff
  void display() {

    Chunk *temp;
    temp = head;
    while(temp != NULL) {

      cout << temp->info << " ---> ";
      temp = temp->next; 

    }
    cout << " NULL " << endl; 
  }
  
};

int main() {

  LinkedList LL;
  int value, pos, choice;

  while(1) {
    cout << "Press 1 to add" << endl;
    cout << "Press 2 to delete" << endl;
    cout << "Press 3 to display" << endl;
    cout << "Anything else to quit" << endl;
    cin >> choice; 

    switch(choice) {

    case 1 :
      cout << "Add what?" << endl;
      cin >> value; 
      cout << "At what position?" << endl;
      cin >> pos;
      LL.insertAtPos(value, pos);
      break;

    case 2 :
      cout << "Remove from what position?" << endl;
      cin >> pos;
      LL.deleteAtPos(pos); 
      break;

    case 3 :
      LL.display();
      break;

    default:
      cout << "Goodbye!" << endl;
      exit(1);

    }
    
  }
  return 1; 
}
