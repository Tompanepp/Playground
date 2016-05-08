
#include "Stack_OOP_Mine.h"


#include <iostream>
using namespace std;

void Stack::push(int value)
{
    values[stackPointer++] = value;
}

int Stack::pop()
{
  return values[-stackPointer];
}


void AddingStack::push(int value)
{
    Stack::push (value);
    sum++;
}

int AddingStack::pop()
{
  sum--;
  return Stack::pop();

}

int AddingStack::getSum()
{
  return sum;
}
