#include <iostream>
#include <iomanip>
using namespace std;

int main()
{
    cout.precision(4);
     //Fixes the decimal point and decimal numbers
  cout << setprecision(2) << showpoint << fixed;
    cout <<12.923 << endl;
    system("Pause");
}
