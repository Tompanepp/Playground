//Restructuring algorithm for performance
#include <iostream>

using namespace std;
//Initial
/*int main()
{
   string name;
   int mark,percentage;

   cout << "Enter a name then marks" <<endl;
   cin >>name;
   cin >>mark;
   percentage = (mark/45) * 100;
   while(name != "X")
   {
     cout << name<<endl;
     cout <<percentage<<endl;
     cout << "Enter a name then marks" <<endl;
     cin >>name;
     cin >>mark;
     percentage = (mark/45) * 100;

   }
   cin.get();
}*/

//Restructured
int main()
{
   string name;
   int mark,percentage;

   cout << "Enter a name then marks" <<endl;
   cin >>name >>mark;
   while(name != "X")
   {
     percentage = (mark/45) * 100;
     cout << name << " " <<percentage;
     cin >>name>>mark;
   }
   cin.get();
}
