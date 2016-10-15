//Gets an intial value
//Displays the sum of give subsequent values from the initial value
//include the initial value

//Tompane P. Praise

#include <iostream>

using namespace std;

int main()
{
   int x,sum,cnt;
   
   cout <<"Please enter initial value" << endl;
   cin >> x;
   //NB:cin takes value first the 'enter' key
   cin.ignore();
  
   sum = x;
   //Initialise to value after x
   //else loop executes for extra one iteration
   //First addition should be with number after x
   cnt = x + 1;
   
   //Summing
   //'cnt <= x + 5' as we want it to add next 5 values after the initial
   while(cnt <= x + 5)
   {
     sum += cnt;
     cnt +=1;
   }
   cout <<"Sum is :" << sum <<endl;
   cin.get();
}
