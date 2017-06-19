//Template stack class declaration
//Praise P Tompane
//2012/01/09

#ifndef STACK_H
#define STACK_H


template<class a_type> class Stack
{
   public:
      //Constructor
      Stack(int sizeOfStack);

      //Copy of constructor
      //Stack(a_type obj);

      //Destructor
      ~Stack();
      //Operations
      void pop(a_type &Extracteddata);//Takes data from the stack and stores in argument
      void push(a_type &dataToStore);
      bool isFull();
      bool isEmpty();

   private:
      a_type *stackArray;
      int stackSize;
      int top;


};
#endif
