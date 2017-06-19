#include <iostream>

using namespace std;

int main()
{
    int N [6] = {7,10,2,14,1,3};
    int smallest = N[0];
    int i = 1;
    int location = i;//Location st to location of initial value of biggest
    
    while(i < 5)
    {
      if(smallest < N[i])
      {
         smallest = smallest;
         i++;
      }
      else
      {
      smallest = N[i];
      //Storing location of smallest values
      location = i;
      i++;
      }
    }
    //Native C printing
    printf("%d %d",smallest,location);
    cin.get();
}
