
#include <iostream>
using namespace std;

struct TrainCart
{
   int seats;
   int cartNumber;
   TrainCart *next;//Pointer to the next struct
};

int main()
{
    TrainCart *ptrengineroom;//pointer to the first cart
    TrainCart *conductor;//Pointer that travels.Stores the next carts memory address and moves to it
    
    //TrainCart engineroom;//Instance of TrainCart
    
    //ptrengineroom = &engineroom;
    
    ptrengineroom = new TrainCart;//Pointing to the first cart
    //Filling data for the first cart
    ptrengineroom->seats = 2;
    ptrengineroom->cartNumber = 1;
    //Memory address of the next cart is set to zero as it is known
    ptrengineroom->next = 0;
    conductor = ptrengineroom;//Points to the first cart as well.Moves to the firrst cart.As it now has the memory address of ptrengineroom
    
    //FUNCTION TO TRANSERVE A LINK LIST
    //Moving to the subsequent cart it any
    if(conductor->next != 0)
    {
       //Creating a new cart if we need one
       if(conductor->next == 0)
       {
       //conductor->next being zero indicates to us that we are at the end.
       //We simply point 'conductor->next' to a 'new' Traincart to add a new cart.'Dynamic memory allocation'
       conductor->next = new TrainCart;
       }
       
       //If the 'next' is not zero the conductor now points to that memory address(It moves to it)
       while(conductor->next != 0)
       {
        //Displaying details of current cart
        cout <<"The cart number is : "<<conductor-> cartNumber<<endl;
        cout <<"The number of seats are : "<<conductor->seats <<endl;
         
         //Moving to the next cart
         conductor = conductor->next;
         
       }
    }
    
    cin.get();
    return 0;
}
