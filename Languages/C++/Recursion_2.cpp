//Displays 123456789987654321 then stops
//Praise P. Tompane

#include <iostream>

using namespace std;
//Base case of a recursion function
//is the condition that causes the recursion to stop
void PrintNum(int Num)
{
  //bool NumReachedNine = false;
  cout <<Num;
     if(Num < 9)
     {
      PrintNum(Num + 1);
     }
     if(Num == 9)
     {
       //NumReachedNine = true;
       cout <<Num;
     }
}

int main()
{
   PrintNum(1);
   cin.get();
   
}
