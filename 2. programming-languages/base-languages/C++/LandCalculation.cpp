#include <iostream>
using namespace std;
//Converts square feet to acres

int main()
{
    double acres;
    double squareFeet;
    
    //One acre = 43560 square feet
    
    squareFeet = 389767;
    acres = squareFeet/43560;
    
    cout << acres << " gallons"<<endl;
    system("Pause");
}
