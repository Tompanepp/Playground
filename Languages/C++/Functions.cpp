#include <iostream>
using namespace std;
//If the function is after main.You define it so the compiler knows it exists
void PrintString(char *str,char *str2);
int Stringlength(char *str);

int main()
{
    PrintString("Praise","Tompane");
    int strLength = Stringlength("Buzz");
    cout <<"The length of the name is: " <<strLength<<endl;
    system("Pause");
    return 0;
}
//PrintString function
void PrintString(char *str,char *str2)
{
       cout << str<<" "<<str<<endl;
}

//String length function
int Stringlength(char *str)
{
    int Length = 0;//We begin at the first index of the string(Essentiall stored as an array of charcters)
    //Every string has a null character at the end.
    //We search through the string until we find it.
    //For each time it's not found we add 1 to the length
    while(str[Length] != '\0')
    {
       //Moving to the  next character and adding to the accumulted length            
      Length++;
    }
    return Length;
}
