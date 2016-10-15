#include <iostream>

using namespace std;

int main()
{
    int N [6] = {7,10,2,14,1,3};
    int biggest = N[0];
    int i = 1;
    int location;
    
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
      i++;
	  }
    }
    printf("%d %d",biggest,i);
    cin.get();
}
