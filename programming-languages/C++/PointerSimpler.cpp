#include <iostream>
using namespace std;
int main()
{
    int a = 0;
    //Error. pointer stores memory address and a is an int which is zero
    //int *ptr = a;
    //Correction
    //The & derefering operaor extracts the memory location of int a 
    int *ptr = &a; 
    //Displays the contents of the memory referenced by ptr
    //Hence the use of *
    cout << *ptr <<endl;
    //Dispalys the memory address of int a.Beacuse ptr was linked to that address by int *ptr = &a
    //So ptr is just variable then * linked it to the memory address of int a and stored it in it
    //Hence we simply cout << ptr to get the memory address of int a
    cout <<ptr << endl;
    cout <<&a<<endl;
    //If we need to change the value of int a via ptr.We need the * operator
    //We change the value of the memory address that ptr is linked to
    *ptr  = 9;
    cout <<a<<endl;
     /*/To alter the value of ptr we would need to store a new address
     //Storing an integer would be incorrect as ptr now accepts memory addresses
     ptr = 0;
     cout << ptr <<endl;
     cout << *ptr <<endl;*/
     //Correct
     int b = 90;
      ptr = &b;
      //Displayinh mem add
     cout << ptr <<endl;
     //Displaying the value at mem add refernced by ptr.Mem add of b which is = to 90
     cout << *ptr <<endl;
     
    
    system("Pause");
    return 0;
}
