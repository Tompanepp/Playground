#ifndef __EXCEPTIONS_STACK__
#define __EXCEPTIONS_STACK__

#include "Exceptions_Stack_Exceptions.h"

class Stack {
    private:
	int *stackstore;
	int stacksize;
	int SP;
    public:
	Stack(int size = 100) throw (stack_size_error,stack_bad_alloc);
	~Stack();
	void push(int value) throw (stack_overflow);
	int pop(void) throw (stack_empty);
};
#endif
