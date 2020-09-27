// Converging_Pointer.cpp : main project file.
//Converging pointers data cleanup algorithm
//Praise P Tompane
//2012 - 01 - 21
//Exchanges zeros on the left with non-zero values on the right


#include <iostream>


using namespace std;

int main()
{
	
   int left = 0;
   int right = 9;//Initialised accordong to array counting(This id 10)
   int legit = 9;//Stores the total of non-zero numbers
   int nList[] = {0,24,16,0,36,42,23,21,0,27};

while(left <= right)
{
   if(nList[left] == 0)
   {
	   legit--;//Decrementing the number of non-zero numbers
       if(right != 0)
       {
           //Switching values
           int temp = nList[right];//Copying value at index right
           //Moving Zero at index Left to current position of index Right
           nList[right] = nList[left];
           nList[left] = temp;
           //Moving indexes
           right--;
           left++;

       }
   
   }
    else
       left++;
   //Checks for zero at index right
   if(nList[right] == 0)
   {
   right--;//Moving One index left if value index right is Zero
   }

}
   //Displaying cleaned set
   for(int i = 0;i < legit;i++ )
   {
     Console::Write(nList[i] + " ");
   }

    cin.get();
    return 0;
 
}
