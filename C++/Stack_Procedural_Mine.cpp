

#include <iostream>

using namespace std;

struct Stack
{
  int stackPonter;
  int values[100];
};

void push(Stack &data,int value)
{
   data.values[data.stackPonter] = value;
   cout <<"values parameter " << data.  values[0] << endl;
   data.stackPonter++;
}

int pop(Stack data)
{

  return data.values[data.stackPonter];
}

int main(int argc, char const *argv[]) {
  /* code */
  Stack coins;
  coins.stackPonter = 0;

  push(coins, 1);
  cout << "stack point " << coins.stackPonter <<endl;
  cout << "stack value " << coins.values[0];
  cout << pop(coins) << endl;
  return 0;
}
