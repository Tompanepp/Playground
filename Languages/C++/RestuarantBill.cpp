#include <iostream>
#include <iomanip>//For output manipulation
using namespace std;

//Calcultes total price of a meal after tax
//Calcultes 15% tip of the total meal price
//Displays the all the above
int main()
{
    double mealCost;
    double taxPercentage;
    double taxamount;
    double totalBill;
    double tipamount;
    double tipPercentage;
    
    mealCost = 44.50;
    taxPercentage = 6.75;
    tipPercentage = 15;
    //taxamount
    taxamount = mealCost * (taxPercentage/100);
    //Total bill
    totalBill = taxamount + mealCost;
    //Tip
    tipamount = totalBill * (tipPercentage/100);
    
    cout <<"Meal cost  :$" <<setprecision(4)<< mealCost
         <<"\nTax amount :$"<<setprecision(4)<<taxamount
         <<"\nTip amount :$" <<setprecision(4)<< tipamount
         <<"\nTotal bill :$"<<setprecision(4)<<totalBill<<endl;
    system("Pause");
}
