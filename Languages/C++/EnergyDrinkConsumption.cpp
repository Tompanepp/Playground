#include <iostream>
#include <iomanip>
using namespace std;

int main()
{
    int numOfPeople;
    int energyDrinkersPercentage;
    int citrusEnergyDrinkersPercentage;
    double energyDrinkers;
    double citrusEnergyDrinkers;
    
    numOfPeople = 12467;
    energyDrinkersPercentage = 14;
    citrusEnergyDrinkersPercentage = 67;
    
    energyDrinkers = numOfPeople * 0.14;//(energyDrinkersPercentage/100);
    citrusEnergyDrinkers = energyDrinkers *0.67;// (citrusEnergyDrinkersPercentage/100);
    
    cout <<"Approxiamate number of poeple who consuume energy driks : #" <<energyDrinkers<<endl
         <<"People who prefer citrus flavoured energu driks : #" <<citrusEnergyDrinkers<<endl;
         
         system("Pause");
}
