#include <iostream>
using namespace std;

int Add(int x,int y)
{
    int sum = x + y;
    return sum;
}
int Subtract(int x,int y)
{
    int difference = x - y;
    return difference;
}
int Multiply(int x,int y)
{
    int product = x * y;
    return product;
}
int Divide(int x,int y)
{
    int quotient ;
	string error;
    if(y != 0)
    {
    quotient = x/y;
    }
    else
	   error =  "ERROR:Cannot divide by zero";
     throw error;
    return quotient;
}
int main()
{
    char op;
    int x,y,result;
    
    cout << "Which operation would you like to perform.Addition(+),Subtraction(-),Multiplication(*) or Division(/) ?" << endl;
    cin >> op;
    cout << "Enter your numbers"<<endl;
    while(op != 'e')
    {
     switch(op)
     {
       case '+':
            cin >>x >> y;
            result = Add(x,y);
            cout << "The result is :"<<result << endl;
            break;
        case '-':
            cin >>x >> y;
            result = Subtract(x,y);
            cout << "The result is :"<<result << endl;
            break;
         case '*':
            cin >>x >> y;
            result = Multiply(x,y);
            cout << "The result is :"<<result << endl;
            break;
          case '/':
            cin >>x >> y;
            try
            {
            result = Divide(x,y);
            }
            catch (string *exceptionMessage)
            {
              cout << exceptionMessage<< endl;   
            }
            cout << "The result is :"<<result << endl;  
            break;           
       default :
         cout << "Good  bye";
     }
     cout << "Which operation would you like to perform.Addition(+),Subtraction(-),Multiplication(*) or Division(/) ?" << endl;
    cin >> op;
    cout << "Enter your numbers"<<endl;
  }
}
