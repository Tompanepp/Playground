#include <iostream>
using namespace std;

//A pointer is a variable that references the memory address of another variable
 //& deferencing operator
 //& Sorts of extracts the memoory address of the respective variable its written with
 //* Refrence operator
int main()
{
    char c = 'u';
   
    //Memory address of c is stored in *ptr
    char *ptr = &c;
    
    //print out
    //We type cast &c beacuse the compiler will treat the memory address as char,which displays "gablygoo"
    //We want the address as an integer
    //& tells the compiler we want the memory address of c
    cout <<(int)&c << endl;
    //Displays the value of c and its memory loation.WHY?
    cout<<*ptr;
    //It displays the memory location of c,because ptr is pointer to c
    cout <<(int)ptr << endl;
    //Notice the addresses are the same,beacause ptr references the memory addresss of char c
    
    //Changing the value of char c
    c = 'b';
    //Using the pointer to change the value of c
    //We change the value in the address that the ptr ponter points to,
    //which is the address of c.As such the value of c is altered
    *ptr = 'd';
    cout << c << endl;
    //To alter the value of ptr we would need to store a new address
    ptr = 0;
    cout << ptr;
    system("Pause");
    return 0;
}
