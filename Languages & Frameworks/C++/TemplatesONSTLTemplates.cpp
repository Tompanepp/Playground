
#include <iostream>
#include <vector>
using namespace std;

template <class T>
T sum(T operand1, T operand2)
{
    return operand1 + operand2;
}

template <class T>
T * createVector(T vectorDataType)
{

  vector<T> v = new vector<char>;
  return v;
  //vector * vectorPtr = &v;
}

int main()
{
    int a  = 1, b = 1;
    cout << sum(a,b);

    //Dynamic vector
    createVector("int");

    return 0;
}
