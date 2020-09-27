#include <iostream>
#include <cstdlib>
using namespace std;

int main()
{
    int playerNum;
    //Random numner
    int randonNum;
    
   
    
    playerNum = rand();
    
    cout << "Enter a number or 999 to end" <<endl;
    cin >> playerNum;
    
    if(playerNum == randonNum )    
    {
       cout << "You guessed correct.The random number was " <<randonNum << endl;
    }
    else
    if(playerNum > randonNum)
    {
       
       cout << "Your number was too high" << endl;
    }
    else
    if(playerNum < randonNum)
    {
       cout <<"Your numbr was too low"<< endl;
    }
  
    system("Pause");
}
