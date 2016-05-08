#include <iostream>
#include <iomanip>
using namespace std;

int main()
{
    double profitPercentage;
    double circuitBoardPrice;
    double totalCircuitBoardPrice;
    
    profitPercentage = 40;
    circuitBoardPrice = 12.67;
    
    totalCircuitBoardPrice = (profitPercentage/100) * circuitBoardPrice + circuitBoardPrice;
    cout << "The total price is $"<<setprecision(4)<<totalCircuitBoardPrice <<endl;
    system("Pause");
     
}
