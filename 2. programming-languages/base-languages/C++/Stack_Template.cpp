//definition of Stack.h
//Praise P Tompane
//2012/01/09

#include "Stack.h"
#include <iostream>

using namespace std;

//"template<class a_type>" simply indicates we are working
//with templates
//Stack <a_type> indicates that the Stack class is a template
//Contructor
template<class a_type> Stack <a_type> :: Stack(int sizeOfStack)
{
   stackArray = new a_type[sizeOfStack];
   stackSize = sizeOfStack;
   top = -1;//Stack is empty
}

//Copy of the constructor
/*template<class a_type> Stack <a_type> :: Stack(a_type obj)
{
}*/
//Destructor

template<class a_type> Stack <a_type> :: ~Stack()
{
    delete [] stackArray;
}
//Operations

//isFull
//returns true if the stack if is full or false if otherwise
template<class a_type> bool Stack <a_type> :: isFull()
{
    if(top == stackSize - 1)
    {
        return true;
    }
    else
        return false;
}

//isEmpty
//return true if the stack is empty and false if otherwise
template<class a_type> bool Stack <a_type> :: isEmpty()
{
    if(top == -1)
    {
       return true;
    }
    else
       return false;
}

//Pops the value at the top of the stack
//and copies it into the argument
template<class a_type> void Stack <a_type> :: pop(a_type &Extracteddata)
{
    if(isEmpty())
    {
        cout << "Stack is empty\n";
    }
    else
    {
        Extracteddata = stackArray[top];
        top--;//Moving down to the lower next subcript
    }
}

//Push
//Pushes its argument onto the stack
template<class a_type> void Stack <a_type> :: push(a_type &dataToStore)
{
    if(top == stackSize - 1)
    {
        cout <<"The stack is full\n";
    }
    else
    {
        top++;
        stackArray[top] = dataToStore;

    }
}




