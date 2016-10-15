#include <iostream>
using namespace std;

int main()
{
   int x = 5;
   do
   {
    cout << x <<endl;
    x--;
   }
   while(x  > 0);//Note the semicolon

   //Useful to return to menus,when required choice is not selected
   //Check out program 5-8 in the book
   //We want the name Praise


   string PatientName;
   do
   {
    cout << "Enter a name" << endl;
    cin  >> PatientName;
	cout << "Hello"<<PatientName;
   }
    while (PatientName != "Praise");
    
   

}
