#include <iostream>
using namespace std;

double divide(int numerator,int denominator )
{
       if(denominator == 0)
       {
          throw "ERROR:Cannot divide by zero.\n";
       }
       else
       return static_cast<double>(numerator)/denominator;
}
int main()
{
    int a,b;
    double quotient;
    cout <<"Enter two numbers" <<endl;
    cin >>a >>b;
    try
    {
       
       quotient = divide(a,b);
       cout <<"The quotient is " <<quotient<<endl;
    }
    //catch(char *exceptionString)
    catch(string exceptionString)
    {
        cout <<exceptionString;
    }
    system("Pause");
}
