#include <iostream>
using namespace std;

int main()
{
    int val[] = {4,7,11};
    int *valptr = val,* ptr;
	ptr = valptr;
	cout << ptr << " " << valptr;
    cout <<val<<endl;
    
}
