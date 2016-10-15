//Selection sort algorithm
//Praise P Tomapne
//2012-01-11

#include <iostream>

using namespace std;


int main()
{
  int length = 3;//Length of Array
  int location = 0;//Stores position where current largest was founda
  int counter = 1;

 int numberList[] = {4,2,1};

  //Initialising largest to index Zero
  int largest = numberList[0];

  while(length >= 0)
  {

      while(counter < length)
      {
        //Getting the current largest value
        if(largest > numberList[counter])
        {
            largest = largest;
            counter++;
        }
        else
            largest = numberList[counter];
            counter++;
            location = counter;
      }
       //Copying the content of the last index to LOCATION
  //of largest
  int temp = numberList[length];
  cout << "Temp is :"<<temp<<endl;
  //Moving current largest value to the current end
  numberList[length] = largest;
  cout <<"  numberList[length] is :" <<numberList[length] <<endl;
  //Placing temp in location of largest
  numberList[location] = temp;
  cout << "  numberList[location] is :" <<numberList[location]<<endl;
  //Decerement the length
  length--;

 /*//Reset counter
  counter = 1;
  //Reset largest
  largest = numberList[0];
  //Rest location
  location = 0;*/

  }
  cout << "Done sorting \n";
//Displaying sorted list
  counter = 0;
  length = 3;
  while(counter < length)
  {
      cout << numberList[counter] << " ";
      counter++;
  }
  cin.get();
}
