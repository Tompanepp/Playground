#include <iostream>
using namespace std;

int main()
{
    double totalSales = 46000000;
    double eastCoastSales;
    double salesPercentage;
    
    //salesPercentage = 62/100.Thsi doesn't work
    salesPercentage = 62;
    
    eastCoastSales =( salesPercentage/100) * 46000000;
    
    cout << "East Coast total sales are $"<<eastCoastSales<<endl;
    
    system("Pause");
}
