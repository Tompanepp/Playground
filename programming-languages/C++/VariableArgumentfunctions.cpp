//A program with a function that accepts any number of argument
//We need :
//cstdarg header file
//va_list - stores the arguments.Which is like any variable(va_list list;)
//va_start - Initializes the list.Whi
//va_arg - returns the next argument
//va_end - cleans up the variable argument list

#include <iostream>
#include <cstdarg>
using namespace std;
//The fist argument specifies the total number of digits that the user wants to pass to the function
double average(int numofarguments,...)//Variable argument function.Need to include the ellipsis(...)
{
  double sum = 0;
  //Declaring a variable list
  va_list numberList;
  
  //Initialising the list
  //Takes the list name and the first argument in the function header
  va_start(numberList,numofarguments);
  //Returns next argument in the list of a specified data type
  for(int i = 0;i < numofarguments;i++)
  {
    //returns values which are added to sum
   sum += va_arg(numberList,int);
  }
  
  va_end(numberList);
  //retruning average
  //sum,divided by the provided total number of digits provided
  return sum/numofarguments;
}


int main()
{
    //The first argument isn't added to the sum
   
   cout << average(4,2,2,2,2) << endl; 
   
  
   //system("Pause");
}
