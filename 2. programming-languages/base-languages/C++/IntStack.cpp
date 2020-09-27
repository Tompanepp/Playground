//Implementation of IntStack
//Praise P Tompane

#include <iostream>
#include "IntStack.h"

using namespace std;
//Constructor
//Creates an empty stack
//Initialises stackSize and top
//The size parameter is the size of the stack.Allocates to the stackSize private variable

IntStack::IntStack(int size)
{
  stackArray = new int[size];
  stackSize = size;
  //Stack is empty when -1.As arrays start at index 0
  top = -1;

}

//Copy of constructor
IntStack::IntStack(const IntStack &obj)//Takes an IntStack object
{
    //Create stack array
    if(obj.stackSize > 0)
    {
        stackArray = new int[obj.stackSize];
    }
    else
    stackArray = NULL;

    //Copy the stackSize attribute
    stackSize = obj.stackSize;

    //Copy the stack contents
    for(int count = 0;count < stackSize;count++)
    {
        stackArray[count] = obj.stackArray[count];
    }
    //Setting the top of the stack
    top = obj.top;
}

//Destructor
IntStack::~IntStack()
{
    //Releasing the dynamically allocated memory
    delete [] stackArray;
}

//Member fuctions

//Push
//Pushes its argument onto the stack

void IntStack::push(int num)
{
    if(isFull())//Returns true if stack is full and flase if otherwise
    {
        cout << "The stack is full.\n ";
    }
    else
    {
        top++;//Acts as subscript
        stackArray[top] = num;//Stacking/storing the input(num )
    }
}
//Pop
//Pops the value at the top of the stack
//and copies it into the argument

void::IntStack::pop(int &num)
{
    if(isEmpty())
    {
        cout << "The stack is empty .\n";
    }
    else
    {
        num = stackArray[top];
        top--;//Moving down to the lower next subcript
    }
}

//isFull
//returns true if the stack if is full or false if otherwise

bool IntStack::isFull()const
{
    bool status;

    if(top == stackSize - 1)//Last index is the/an size of the array - 1
    {
       status = true;
    }
    else
    {
        status = false;
    }
    return status;
}

//isEmpty
//return true if the stack is empty and false if otherwise
bool IntStack::isEmpty()const
{
   bool status;
   if(top == - 1)
    {
       status = true;
    }
    else
    {
        status = false;
    }
    return status;
}





