
//A pointers data types is primitive * / class *
//i.e int *, string *, Student *

#include <cstring>
#include <string>
#include <iostream>
using namespace std;

int main() {
    int *ptr;
    string fruit = "apples";
    int ivar = 99;
    ptr = 0; //NULL pointer
    ptr = NULL; //Part of the cstring header
    //DEREF null pointer
    cout << *ptr;
    
    //ptr = &fruit;
    ptr = &ivar;
    //ptr = 0x7fff56d6bacc;
    cout <<"ivar is store at " << ptr << " and it's value is " <<*ptr;
    //chage ivar
    *ptr = 4;
    cout <<"ivar is store at " << ptr << " and it's value is " <<*ptr;
    
    //NOTATOIN
    /*
        & is the reference operator (give me the reference(the memory address)
        * is the deference operator (navigate to and access the reference(the memory address)
     *          :You can write or read the location
     
     */
   
    //POINTER ARITHMETICS
    /*
   
     pointer + int = pointer
     pointer - int = pointer
     pointer - pointer = int
     pointer + pointer = int
     (pointer == pointer) = int
     */
    return 0;
}