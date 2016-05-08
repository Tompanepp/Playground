//Praise P Tompane
//2012-June-24
//Testing arrays
//NB:Can determine array size by the size of the initialization list:


#include <iostream>
using namespace std;

int main()
{
    int numbers[] = {1,1,1,1,1};

    //Initiliazation of char array
    char name[7] = "Praise";//Must leave room for \0 at end of array
    //or
    char surname[8] = {'T','o','m','p','a','n','e','\0'};//Need to be in curly brakets and '\0' must be included

    //You can display the contents of a character array by sending its name to cout:
    //NB:Only works with character arrays
    cout << name << " " << surname;

    /*Better way of finding largest value in an array
    int count;
    int highest;
    highest = numbers[0];
    for (count = 1; count < SIZE; count++)
    {
        if (numbers[count] > highest)
        highest = numbers[count];
    }*/
const int SIZE = 5;
int firstArray[SIZE] = { 5, 10, 15, 20, 25 };
int secondArray[SIZE] = { 5, 10, 15, 20, 25 };
bool arraysEqual = true; // Flag variable
int count = 0;           // Loop counter variable
// Compare the two arrays.
while (arraysEqual && count < SIZE)
{
   if (firstArray[count] != secondArray[count])
      arraysEqual = false;
   count++;
}
if (arraysEqual)//If true,is the default test.Basically equivalent to if(arraysEqual == true)
   cout << "The arrays are equal.";
else
   cout << "The arrays are not equal.\n";

//NB : 2D arrays are initialised row-by-row


    return 0;
}
