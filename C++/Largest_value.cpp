#include <iostream>

using namespace std;

int main()
{
    int N [6] = {7,10,2,14,1,3};
    int largest = N[0];
    int i = 1;
    int location = i;//Location st to location of initial value of biggest
    
    while(i < 5)
    {
      if(largest > N[i])
      {
         largest = largest;
         i++;
      }
      else
      {
      largest = N[i];
      //Storing location of smallest values
      location = i;
      i++;
      }
    }
    //Native C printing
    
    printf("%d %d",largest,location);
    cin.get();
}
