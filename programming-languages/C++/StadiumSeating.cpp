//Captures number of stadium seat tickets sold and displays the total income
//Author Praise p. Tompane
#include <iostream>
#include <iomanip>
using namespace std;

int main()
{
    //Seat  costs
    double classAprice = 15.00,
           classBprice = 12.00,
           classCprice = 9.00,
           totalIncome = 0.00;
    //Number of seats per class
    int classAseats,
        classBseats,
        classCseats;
    
    //Interaction
  cout <<"Enter number of class A seats sold" << endl;
  cin >>  classAseats;
  cout <<"Enter number of class B seats sold" << endl;
  cin >> classBseats;
  cout <<"Enter number of class C seats sold" << endl;
  cin >> classCseats;
  
  
  cout.precision(2);
  //Total income
  totalIncome = (classAseats*classAprice) + (classBseats * classBprice) + (classCseats * classCseats);
  //Fixes the decimal point and decimal numbers
  cout << setprecision(2) << showpoint << fixed;
  cout <<"Your total income is : $ "<<totalIncome <<endl;
  system("\nPause");
}
