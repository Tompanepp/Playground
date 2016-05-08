//Praise P. Tompane
//2012-May-31
/*Program demonstrates accessing of a value
by dereferencing the the memory address of a pointer*/

#include <iostream>

using namespace std;

int main()
{
    int * ptr,a = 90;
    ptr = &a;
    cout << **&ptr <<endl;
    cin.get();
}
