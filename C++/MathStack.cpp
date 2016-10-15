//MathStack implementation
#include "IntStack.h"
#include "MathStack.h"


//Operations
//add() takes first two values in the stack and pushes their sum into the stack

void MathStack::Add()
{
  int sum,num;//Holds values popped off the stack

  //Taking/popping first two values off the stack
  pop(sum);
  pop(num);

  //Adding
  sum += num;
  //Pushing the sum onto the stack
  push(sum);
}

//sub() takes first two values in the stack and pushes their difference into the stack
void MathStack::Sub()
{
   int diff,num;//Holds values popped off the stack

  //Taking/popping first two values off the stack
  pop(diff);
  pop(num);

  //Subtracting
  diff -= num;
  //Pushing the sum onto the stack
  push(diff);
}
//Mul() takes first two values in the stack and pushes their product into the stack
void MathStack::Mul()
{
    int pro,num;

    pop(pro);
    pop(num);

    pro = pro *num;
    push(pro);
}
//Div() takes first two values in the stack and pushes their quotient into the stack
//NB:The last number in will be divided by the first.(LIFO)
void MathStack::Div()
{
    int quo,num;

    pop(quo);
    pop(num);

    quo = quo / num;
    push(quo);
}
