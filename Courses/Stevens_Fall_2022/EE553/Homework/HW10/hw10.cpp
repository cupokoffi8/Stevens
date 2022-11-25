#include <iostream>
#include <vector> 
#include <algorithm> 
using namespace std;


template <class T> 
class Merge{
  public: 
    vector<vector<T>> merge(vector<vector<T>> v) {
      try{
        if(v.size() < 2)
          throw 1; 
      } 
      catch(int e) {
        cerr << "ERROR: Only one range provided, need at least two\n"; 
        return v; 
      } 

      vector<vector<int>> ans {{v[0][0],v[0][1]}}; 

      int ans_size = 1; 
      for(int a=0; a<ans_size; a++) {
        for(int i = 1; i < v.size(); i++) {
          if(ans[a][0] < v[i][0] && ans[a][1] > v[i][1] > ans[a][1]) {
            ans[a][1] = v[i][1]; 
          }
          else if (ans[a][0] < v[i][1] && ans[a][1] > v[i][1] && v[i][0] < ans[a][0]) {
            ans[a][0] = v[i][0]; 
          } 
          else {
            ans.push_back({v[i][0], v[i][1]}); 
          }
        }
      } 
      for(int a=1; a<ans.size(); a++) {
        if(ans[a][0] < ans[a-1][1] && ans[a][0] > ans[a-1][0] && ans[a][1] > ans[a-1][1]) {
          ans[a-1][1] = ans[a][1]; 
          ans.pop_back(); 
        } 
        else if (ans[a][1] > ans[a-1][0] && ans[a][1] < ans[a-1][1] && ans[a][0] > ans[a-1][0]) {
          ans[a-1][0] = ans[a][0]; 
          ans.pop_back(); 
        }
      } 
      return ans; 
    } 
    void print(vector<vector<T>> v) {
      for(int i = 0; i < v.size(); i++) {
        cout << "{" << v[i][0] << ", " << v[i][1] << "}" << endl; 
      }
    }
}; 

int main() {

  vector<vector<int>> array1, array2, array3, array4;
  vector<vector<int>> ans;
  // Make object of Class Merge with template T used as int
  Merge<int> s;

  array1 = {{2, 5}, {1, 4}, {3, 9}, {20, 29}, {7, 16}, {15, 27}};
  array2 = {{1, 3}, {2, 6}, {8, 10}, {15, 18}};
  array3 = {{2, 5}, {6, 10}, {15, 20}, {30, 31}};
  array4 = {{1, 4}};

  // Merge first array and print
  cout << "array 1 after merge: \n";
  ans = s.merge(array1);
  s.print(ans);

  // Merge second array and print
  cout << "\narray 2 after merge: \n";
  ans = s.merge(array2);
  s.print(ans);

  // Merge third array and print
  cout << "\narray 3 after merge: \n";
  ans = s.merge(array3);
  s.print(ans);

  // Merge forth array and print
  cout << "\narray 4 after merge: \n";
  ans = s.merge(array4);
  s.print(ans);

  return 0;
}