#include <iostream>
#include <iomanip>
using namespace std;

int main()
{
    //NB:It's not conversion in C#
    //Makes a variable to act as a particular data type for one operation
    //ACSII character chart
    /*for(int i = 1;i < 257;i++)
    {
            //C-style
       cout << i<<" "<<(char)i <<endl;
       
    }*/
    char a = 'A';
    
    cout << static_cast<float>(a) << endl;
    
    float b = 1.23;
    cout <<setprecision(4) <<static_cast<char>(b) << endl;
    cin.get();
}
