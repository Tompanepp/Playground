
class Stack
{
    private:
        int  * values;
        int stackPointer;
    public:
      Stack(int values = 100)
      {
        //Stack::values = new int[values];
        this->values = new int[values];
        stackPointer = 0;
      }
      ~Stack()
      {
        delete values;
      }
      void push(int value);
      int pop();
};

class AddingStack:Stack
{
    private:
        int sum;
    public:
      AddingStack():Stack()
      {
        sum = 0;
      }
      void push(int value);
      int pop();
      int getSum();
};
