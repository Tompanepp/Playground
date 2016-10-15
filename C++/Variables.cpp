#include <iostream>

using namespace std;

int main()
{
  int thisisanumber;

  cout<<"Please enter a number: ";
  cin>> thisisanumber;
  //using this discards the enter key which is read as well
  cin.ignore();
  cout<<"You entered: "<< thisisanumber <<"\n";
  cin.get();

}
