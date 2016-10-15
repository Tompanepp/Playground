#include <iostream>
using namespace std;
//Determines lucky tickets
//They have Equal sum for the equal porttion of numbers
int main()
{
     int NoOfticketNums,Total = 0;
     int TicketNumbers[1000];
     
     
    cin >> NoOfticketNums;
    for(int i = 0;i < 673;i++)
    {
            for(int j = 0000;j < 10000;j++)
        {
             TicketNumbers[i] = j;
        }
     if(TicketNumbers[0] + TicketNumbers[1] == TicketNumbers[2]+TicketNumbers[3])
      {
         Total +=1;
      }
    }
    cout<<Total;
    
}
