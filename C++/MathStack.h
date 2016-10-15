//Class derived from the IntStack class
#ifndef MATHSTACK_H
#define MATHSTACK_H

#include "IntStack.h"

class MathStack:public IntStack
{
    public:
    //Constructor
    //Implementation is that of the IntStack class.No need for it in the MathStack.cpp
       MathStack(int s):IntStack(s){}//Using Link list.IntStack's size is initialised to s

       //MathStack operations
       void Add();
       void Sub();
       void Mul();
       void Div();

};
#endif
