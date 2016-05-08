#include <iostream>
using namespace std;
//Clacultes distance per gallon on a hoghway and in town
int main()
{
    double highWayMilesPerGallon;
    double townMilesPerGallon;
    double gasGallons;
    double towndistance,highWayDistance;
    
    gasGallons = 20;
    //distance = gasGallons * milespergallon
    //Town
    townMilesPerGallon = 21.5;
    towndistance = gasGallons * townMilesPerGallon;
    //Highway 
    highWayMilesPerGallon = 26.8;
    highWayDistance = gasGallons * highWayMilesPerGallon;
    
    cout <<"DISTANCES\n";
    cout << "Town : "<< towndistance<<endl
         <<"Highway : " <<highWayDistance<<endl;
         
         system("Pause");
    
}
