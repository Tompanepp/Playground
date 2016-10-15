#include "Exceptions_Stack.h"

Stack::Stack(int size) {
  if(size < 0)
    throw stack_size_error("The stack size cannot be less than or  equal to 0 ");
  try
  {
    	stackstore = new int[size];
  }
  catch(std::bad_alloc)
  {
      throw bad_alloc("The OS could not allocate the requested memory");
  }

	stacksize = size;
	SP = 0;
}
Stack::~Stack(void) {
	delete stackstore;
}
void Stack::push(int value) {
  if(SP == stacksize)
    throw stack_overflow("The stack is full");
	stackstore[SP++] = value;
}
int Stack::pop(void) {
  if(SP == 0)
    throw stack_empty("The stack is empty");
	return stackstore[--SP];
}
