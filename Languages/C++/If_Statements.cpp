#include <iostream>
 
using namespace std;
 
int main()
{
    int age;
    //true return 1 and false returns 0 
    cout << (2 == 1) << endl;
    
    if(true)
    cout << "We can test it like this" <<endl;
  
  cout<<"Please input your age: ";  
    cin>> age;                          // The input is put in age
    cin.ignore();                       // Throw away enter
  if ( age < 100 ) {                  // If the age is less than 100
     cout<<"You are pretty young!\n"; // Just to show you it works...
  }
  else if ( age == 100 ) {            // I use else just to show an example 
     cout<<"You are old\n";           // Just to show you it works...
  }
  else {
    cout<<"You are really old\n";     // Executed if no other statement is
  }
    cin.get();
}
