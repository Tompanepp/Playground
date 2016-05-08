#include <iostream>

using namespace std;

int main()
{
    int x =1;
    while(x < 10)
    {
            cout << x << " ";
            if(x % 2 == 0)
            {
                 x = x + 3;
            }
            else
            x = x + 1;
    }
    cin.get();
}
