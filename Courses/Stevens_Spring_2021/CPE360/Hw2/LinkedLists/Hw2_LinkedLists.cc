#include <iostream>
#include <stdlib.h> 
using namespace std;

class Node {
public:
  
  int info;
  Node *next;

  Node() {
    info = 0;
    next = NULL;
  }

};

class LinkedList {
public:

  Node *head;
  int count; 

  LinkedList() {

    head = NULL;
    count = 0; 

  }

  void insertAtPos(int value, int pos) {

    if(pos > 0 && pos <= count + 1) {

      Node *temp;
      temp = new Node;
      temp->info = value; 
      
      if(pos == 1) { 
        //Insert at head
        temp->next = head; 
        head = temp;
        count++;
        cout << "Added " << value << " at position 1" << endl; 
      }
      
    else {
      
      Node *helper = head;
      
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
 
 void removeEveryOtherNode() {
   
   Node *temp = head; 
   Node *helper = head->next; 
   
   while(temp != NULL && helper != NULL) {
     
     temp->next = helper->next; 
     delete helper; 
     
     temp = temp->next; 
     if(temp != NULL) 
      helper = temp->next; 
     
   }
   
 }
 
 void reverseLinkedList() {
   
   Node *temp = head;  
   Node *follow = NULL, *next = NULL; 
   
   while(temp != NULL) {
     next = temp->next; 
     temp->next = follow; 
     follow = temp; 
     temp=next; 
   }
   head = follow; 
   
 }

  void deleteAtPos(int pos) {
    if(head == NULL) {
      cout << "Empty list, nothing to remove." << endl;
      return;
    }

    if(pos > 0 && pos <= count) {
      if(pos == 1) {
        Node *temp;
        temp = head;
        head = head->next;
        cout << "About to delete: " << temp->info << endl;
        delete temp;
        count--;
      }
    
      else {
        Node *chase; 
        Node *follow; 
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

  void displayContents() {

    Node *temp;
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
    cout << "Press 4 to reverse the list" << endl; 
    cout << "Press 5 to remove every other value" << endl; 
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
      LL.displayContents();
      break;
      
    case 4 : 
      LL.reverseLinkedList(); 
      break; 
      
    case 5 : 
      LL.removeEveryOtherNode(); 
      break; 

    default:
      cout << "Goodbye!" << endl;
      exit(1);

    }
    
  }
  return 1; 
}
