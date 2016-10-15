#include <iostream>
using namespace std;

int main()
{
    double miles;
    double gasGallons;
    double MPG;
    
    miles = 350;
    gasGallons = 12;
    
    MPG  = miles/gasGallons;
    cout << "Number of mils per galllon are "<<MPG << " miles\n";
    system("Pause");
}
