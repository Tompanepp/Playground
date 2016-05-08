#include <iostream>

#define LIMIT 10
using namespace std;

int main()
{
    int iteration = 2,cnt = 0;
    //int const LIMIT = 10;
    
    while(cnt < static_cast<int>(LIMIT))
    {
      cout <<iteration << " ";
      iteration += 2;
      cnt +=1; 
    }
    cin.get();
}
