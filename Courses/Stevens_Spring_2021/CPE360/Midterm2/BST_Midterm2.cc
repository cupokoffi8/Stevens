#include <iostream>
#include <stdlib.h> 
using namespace std;

class TreeNode {
public:
  int data;
  TreeNode *left;
  TreeNode *right;

  TreeNode() {
    data = 0;
    left = NULL;
    right = NULL;
  }
};

//BST of such treenodes
class BST {
public:
  TreeNode *root;

  BST() {
    root = NULL;
  }

  //1. Add nodes to the BST
  void addNode(int value) {

    TreeNode *temp = new TreeNode;
    temp->data = value;

    //if tree is empty, make the first value the "root" node
    if(root == NULL) {
      root = temp;
    }
    else {
      TreeNode *slow, *fast;
      slow = fast = root; //start at the top

      while(fast != NULL) {
	if(fast->data == value) {
	  cout << "Duplicate value, we will not add to the tree" << endl;
	  return; 
	}
	if(value < fast->data) {
	  slow = fast;
	  fast = fast ->left;
	}
	else {
	  slow = fast;
	  fast = fast->right;
	}
	
      }
      //Fast has now fallen off the tree
      //We will use "slow" (parent of the tree) to add a new value
      if(value < slow->data) {
	slow->left = temp;
      }
      else {
	slow->right = temp;
      }
      
    }
    cout << "Just added: " << value << " to the BST!" << endl; 
  }
  
  //2. Search for a value (primary objective)
  void search(int key, TreeNode *start) {
    if(start == NULL) {
      cout << "Could not find: " << key << endl;
      return;
    }
    else {
      if(key == start->data) {
	cout << "FOUND IT!!" << endl;
	return;
      }
      else if(key < start->data) {
	search(key, start->left);
      }
      else {
	search(key, start->right);
      }
    }
  }

int findMax(int a, int b){
  if(a >= b)
    {return a;}
  else
    {return b;}
}

int findHeight(TreeNode *root){
  
  if(root == NULL){return 0;}

  return findMax(findHeight(root->left), findHeight(root->right)) + 1;
}
  
  void deleteNode(int key, TreeNode *start)
  {
    bool found = false;
    if(start == NULL)
    {
      cout << "Tree is empty" << endl; 
      return; 
    }
    else
    {
      TreeNode *fast, *slow;
      fast = slow = start;

      while (fast != NULL && fast->data != key)
      {
        if(key < fast->data) {
          slow = fast; 
          fast = fast->left; 
        }
        else {
          slow = fast; 
          fast = fast->right; 
        }
      }

      if(fast == NULL) {  //11241147843
				cout << key << " does not exist in this tree" << endl;
			}
      else
      {
        //Case 1. has no children
        if (fast->left == NULL && fast->right == NULL)
        {
          if (slow->left == fast)
          {
            delete fast;
            slow->left = NULL;
          }
          else
          {
            delete fast;
            slow->right = NULL;
          }
        }
        //Case 2. has one child
        else if (fast->left == NULL || fast->right == NULL)
        {
          if (slow->right == fast)
          {
            if (fast->left == NULL)
            {
              slow->right = fast->right;
            }
            else
            {
              slow->right = fast->left;
            }
          }
          else
          {
            if (fast->left == NULL)
            {
              slow->left = fast->right;
            }
            else
            {
              slow->left = fast->left;
            }
          }
        }
        //Case 3. has two children
        else
        {
          int minVal = minValRSubTree(fast->right);
          deleteNode(minVal, fast);
          fast->data = minVal;
        }
      }
    }
  }

  int minValRSubTree(TreeNode *start)
  {
    TreeNode *temp = start;
    while (temp->left != NULL)
    {
      temp = temp->left;
    }
    return temp->data;
  }

  //Returns minimum value 
  int minValue(TreeNode *start) 
    { 
    TreeNode *temp = start; 
  

    while (temp->left != NULL) 
      { 
        temp = temp->left; 
      } 
    return(temp->data); 
  } 

  //Returns maximum value 
  int maxValue(TreeNode *start) 
    { 
    TreeNode *temp = start; 
  

    while (temp->right != NULL) 
      { 
        temp = temp->right; 
      } 
    return(temp->data); 
  } 

  //Check if tree is balanced with height tolerance of +/-2
  bool isBalanced(TreeNode *root){
		int left_height;
		int right_height;
		
		if (root == NULL) {
      cout << "Tree is empty" << endl; 
      return 1; //Empty tree
    }

		left_height = findHeight(root->left);
		right_height = findHeight(root->right);

		if (abs(left_height - right_height) <= 2)	{
			cout<<"Tree is balanced"<<endl;			
			return 1; //Tree is balanced
		}
		else{
		cout<<"Tree is not balanced!"<<endl;		
		return 0; //Tree is not balanced
		}
  }

  //Deletes the entire tree 
  void clearTree(TreeNode *start) {
    if(start == NULL) {
      return;
    }
    else {
      //LEFT
      clearTree(start->left);
      //RIGHT
      clearTree(start->right);

      delete start; 
      }
  }

    
  //4. Function(s) to display
  //4.1 preorder
  void preorder(TreeNode *start) {
    if(start == NULL) {
      //base case or anchor value
      return; 
    }
    else {
      //recursive step
      //ROOT
      cout << "[" << start->data << "]";
      //LEFT
      preorder(start->left);
      //RIGHT
      preorder(start->right); 
    }
    
  }

  void postorder(TreeNode *start) {
    if(start == NULL) {
      return;
    }
    else {
      //LEFT
      postorder(start->left);
      //RIGHT
      postorder(start->right);
      //ROOT
      cout << "[" << start->data << "]";
    }

  }

  void inorder(TreeNode *start) {
    if(start == NULL) {
      return;
    }
    else {
      //LEFT
      inorder(start->left);
      //ROOT
      cout << "[" << start->data << "]";
      //RIGHT
      inorder(start->right);
    }
    
  }

}; 

int main() {

  BST myTree;

  //Adding initial values to speed up testing 
  myTree.addNode(50); 
  myTree.addNode(25);
  myTree.addNode(75);
  myTree.addNode(20);
  myTree.addNode(30);

  /* Initial tree should look like: 

                [50]
                /  \
            [25]    [75]
            /  \    
        [20]    [30]

  */ 

  int choice, value;

  while(1) {
    cout << endl; 
    cout << "==============================================" << endl; 
    cout << "Press 0 to delete the whole tree" << endl; 
    cout << "Press 1 to add a value" << endl;
    cout << "Press 2 to pre-order" << endl;
    cout << "Press 3 to post-order" << endl;
    cout << "Press 4 to in-order" << endl;
    cout << "Press 5 to search" << endl;
    cout << "Press 6 to delete" << endl; 
    cout << "Press 7 to show tree height" << endl; 
    cout << "Press 8 to show the minimum value in the tree" << endl; 
    cout << "Press 9 to show the maximum value in the tree" << endl; 
    cout << "Press 10 to check if the tree is balanced" << endl; 
    cout << "Any other number to quit" << endl; 
    cout << "==============================================" << endl;
    cout << endl; 
    cin >> choice;

    switch(choice) {
    case 0: 
      cout << "Deleting the whole tree" << endl; 
      myTree.clearTree(myTree.root); 
      myTree.root = NULL; 
      break; 

    case 1:
      cout << "What value?" << endl;
      cin >> value;
      myTree.addNode(value);
      break;

    case 2:
      cout << "==============================================" << endl;
      myTree.preorder(myTree.root);
      cout << endl << "==============================================" << endl;
      break;

    case 3:
      cout << "==============================================" << endl;
      myTree.postorder(myTree.root);
      cout << endl << "==============================================" << endl;
      break;

    case 4:
      cout << "==============================================" << endl;
      myTree.inorder(myTree.root);
      cout << endl << "==============================================" << endl;
      break;

    case 5:
      cout << "What value?" << endl;
      cin >> value;
      myTree.search(value, myTree.root);
      break;

    case 6:
      cout << "What value?" << endl;
      cin >> value;
      myTree.deleteNode(value, myTree.root);
      break; 

    case 7:
      cout << "Height is: "; 
      cout << myTree.findHeight(myTree.root) << endl; 
      break; 

    case 8: 
      cout << "Minimum value is: "; 
      cout << myTree.minValue(myTree.root) << endl; 
      break; 

    case 9: 
      cout << "Maximum value is: "; 
      cout << myTree.maxValue(myTree.root) << endl; 
      break; 

    case 10: 
      myTree.isBalanced(myTree.root); 
      break; 

    default :
      exit(1); 
    }
  }
}
