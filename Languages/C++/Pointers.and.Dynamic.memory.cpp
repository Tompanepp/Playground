#include <iostream>
using namespace std;
int main()
{
     int *ptr;
     //Using the new keeyword means we take control of memory
     //We took 5 * 4bytes = 20 bytes of memory
     //ptr = new int[5]; - This is like int myArray[5]
     //ptr is the identifier of this array.
     //As such *ptr points to the first element
     ptr = new int[5];   //ptr is just a pointer which now points to the first memory address(firts element) of the int array
   //Altering the first element
     *ptr = 5;
   //Altering the second element using array index
    // ptr[1] = 10;
   //Altering the second element using pointer arithmetic      
     ptr++;
     *ptr = 10;
   //Altering the third element using pointer arithmetic
      ptr++;//or ptr+=2;if second element is atered with an array indexptr[1] = 10.This means that ptr still has the memory address of the first index
      
      //ptr is assigned the memory address of the third index.This alters the display of the loop
      *ptr = 15;
      //Subtracting the memory address in ptr by 2,which is 8 bytes(2*4int bytes) back in memory to be 0(hexa-00(1933443400)),
      //in order to display the elements from the first index
      ptr-=2;
      //Or create another pointer pointing(storing) to the first address
      int *ptr2 = &ptr[0];
      for(int i = 0;i < 5;i++)
      {
              //using ptr-=2;
         //cout <<ptr[i]<<endl;
         //creating another pointer
         cout <<*ptr2 <<endl;
         //incrementing mem address
         ptr2++;
           
          
      }
 //We need to deallocate the memory.Give it back to the computer
 //ptr needs to be pointing at the righht address.
 //Or you will dealllocate the incorrect memory that might be used by other applications  
 //Deallocate beacuse your computer will be subjected to memory leak.You lose 20bytes of memory each time you run the program
 delete [] ptr;
 
 system("Pause");
}
