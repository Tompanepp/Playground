#include <iostream>
using namespace std;

int main()
{
    int myArray[4] = {1,2,3,4};
    //myArray is pointer,poiting at index 0.As such displays the memory address of index 0
    //Type casting below changes the address from hexadecimal to an int
    //cout <<(int)myArray<<endl;
    //Using tht dereferencing operator & with myarray[0] will display the address of value 1 in memory
    //cout <<(int)&myArray[0]<<endl;
    
    //cout << *myArray <<endl;
    //Getting the mem address of the first element.Two ways
    int *ptr = myArray;
   
   
    /*//Need index since we want the first element and have already used the myArray pointer
    ptr = &myArray[0];
    //To display the contents of ptr we write ptr and not *ptr
    cout <<(int)ptr <<endl;*/
    /*for(int i = 0;i < 4;i++)
    {
            //*myArray refernces index 0.As such the value in index 0 is assigned to val
            int val = *myArray;
            cout << val <<endl;
            
    }*/
    
    //Looping through the array with just the pointer
    //NB:Pointer arithmetic
    for(int i = 0;i < 4;i++)
    {
            //We are refering ptr.The contents of its memory address will be assgined to val
            //*ptr was assigned to myArray,the memory location of element 0,which is 1
            //Referencing it looks up the value in the memory address of ptr
            int val = *ptr;
            cout << val <<endl;
            //The value of ptr is the mem address of myArray
            //The mem address increments my 4 bytes.The memory an int takes up.Pointer arith,increments the mem add for us
            //With it incremested the referenced mem add at "int val = *ptr" is altered as well
            cout<<(int)ptr<<endl;
            //This incremetns the memory address of ptr.
            //Pointer arithmetic increments it automatically by 4,memory taken by an int
            ptr++;
            
    }
    system("Pause");
    return 0;
}
