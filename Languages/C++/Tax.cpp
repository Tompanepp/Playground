#include <iostream>
using namespace std;

///
///Calculates tax on an item
///
int main()
{
    //NB:Do not assign like this (double taxPercentage = 6/100;).Doesn't work
    
    double taxPercentage = 6;
	double tax;
    double itemprice;
    
    tax = (taxPercentage/100) * 52;
    cout << taxPercentage << "%"<<" tax on a $52 item is $" << tax<<endl;
    system("Pause");
	return 0;
}
