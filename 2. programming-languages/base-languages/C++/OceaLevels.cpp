#include <iostream>
using namespace std;

//Calculates ocean levels expected after a certain period at a known elevation rate
int main()
{
    double oceanLevelIncrement;
    double rate = 1.5;
    
    
    cout << "Ocen level atfer 5 years :"<<rate * 5<< " millimters "<<"higher"
         << "\nOcen level atfer 7 years :"<<rate * 7<< " millimters "<<"higher"
         << "\nOcen level atfer 10 years:"<<rate * 10<< " millimters "<<"higher"<<endl;
         
         system("Pause");
}
