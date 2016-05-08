#include <iostream>
using namespace std;

int main()
{
    int Nums [] = {12,9,8,0,7,6,45,45,1,987,1,4,9,7,3,1,2,4};
    
    int a;
    bool found = false;
    cout <<"Enter number to search ";
    cin >>a;
    
     for(int i = 0;i < 10000;i++)
     {  
          if(a == Nums[i])
          {
               cout <<"Number found"<<endl;
               found = true;
          }
          
     }
    
    system("Pause");
}
