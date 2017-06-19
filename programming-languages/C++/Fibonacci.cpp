#include <iostream>
using namespace std;

int main()
{
    int NumOfAncient = 1000;
    int AncientNo [NumOfAncient];

      AncientNo[0] = 0;
      AncientNo[1] = 1;
      AncientNo[2] = 1;

      int count;
     //int SubOne;
     //int SubTwo;
      //AncientNo[3] = AncientNo[1] + AncientNo[2];
      cout<< " " << AncientNo[0]<< " " <<AncientNo[1]<< " " <<AncientNo[2];
     for(count = 3;count < 50;count++)
     {
            AncientNo[count] =   AncientNo[count - 1] + AncientNo[count - 2];
        /*for(SubOne = 1;SubOne < 2;SubOne++)
        {       for(SubTwo = 2;SubTwo < 3;SubTwo++)
           {

          AncientNo[3] = AncientNo[1] + AncientNo[2];
          }
        }*/

         cout << " " <<AncientNo[count];
     }
     //cout <<AncientNo[3];
     system("Pause");
}
