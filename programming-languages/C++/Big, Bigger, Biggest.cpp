#include <iostream>

using namespace std;

int main()
{
    int N [6] = {7,10,2,14,1,3};
    int biggest = N[1];
    int i = 1;
    int location = i;//Location st to location of initial value of biggest
    
    while(i < 5)
    {
      if(biggest > N[i])
      {
         biggest = biggest;
         i++;
      }
      else
      {
      biggest = N[i];
      //Storing location of bigger values
      location = i;
      i++;
      }
    }
    printf("%d %d",biggest,location);
    cin.get();
}
