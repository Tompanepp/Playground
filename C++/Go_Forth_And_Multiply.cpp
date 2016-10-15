
//Implements multiplication as repeated addition
//Tompane P. Praise

//Psuedo design
//Sequential algorithm
/*1 : Get a
2 : Get b
     3  : set Product to 0
     4 :  set no_of_As to 0
5 :
   while No.of As is less than b do until step 6
       Add 'a' to prodcut
       Increment no_of_As by 1
6 :Display Product
7:Stop
*/

#include <iostream>

using namespace std;

int main()
{
    int a ,b,product,no_of_As;
    cin >>a >>b;
    cin.ignore();
       
    if(a == 0 && b == 0)
    {
       product = 0;  
    }
    else
    product = 0;
    no_of_As = 0;
    while (no_of_As < b)
    {
      product +=a;
      no_of_As++;
    }
    cout <<product <<endl;
    cin.get();
}
