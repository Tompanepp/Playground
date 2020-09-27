#include <iostream>

using namespace std;

int main()
{ 
  int x;            // A normal integer
  int *p;           // A pointer to an integer
  /*//Experiments
  cout << p << " " << &p<<endl;
  *p = 12;
  cout << *p << endl;
  //End
  p = &x;  
  cout << p << endl;         // Read it, "assign the address of x to p"
  cin>> x;          // Put a value in x, we could also use *p here
  cin.ignore();
  cout<< *p <<"\n"; // Note the use of the * to get the value
  */
  
  //The "new" keyword
  cout << p <<endl;
  p = new int[5];
  cout << p <<" "<< ++p<<endl;
  
  delete p;
  cin.get();
}
