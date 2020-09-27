#include <iostream>

using namespace std;

//Causes all function calls to be replaced by the code from the function
//This optimizes speed,but only for small,frequrntly called functions
//It increases the size of the program
inline void hello()
{
       cout << "Hello";
}
int main()
{
    hello();
    cin.get();
}
