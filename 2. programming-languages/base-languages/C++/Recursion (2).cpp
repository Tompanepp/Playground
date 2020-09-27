#include <iostream>

using namespace std;

void printnum ( int begin )
{
  cout<< begin;
  if ( begin < 9 )         // The base case is when begin is greater than 9
  {                           //  for it will not recurse after the if-statement
      printnum ( begin + 1 ); 
  }
  cout<< begin;         // Outputs the second begin, after the program has
                              //  gone through and output
}

int main()
{
    printnum(1);
    cin.get();
}
