//Prints the value of x
//Tompane P. Praise

#include <iostream>

using namespace std;

int main()
{
    int x =1;
    for(int cnt = 0;cnt < 5;cnt++)
    {
            if(x % 2 == 0 )
            {
                 cout << x <<endl; 
            }
            x = x + 1;
    }
    cin.get();
}
