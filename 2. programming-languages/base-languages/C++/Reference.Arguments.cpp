#include <iostream>
using namespace std;
//Use & with strLen
//&strlen will be the memory address.as such the value in memory address will be altered
//Using "int strLen" is refered to as calling(passing) by value.a copy of the data is send to the function
//Using "int &strLen" is a reference call."int &strLen" is a reference argument
int Stringlength(char *str,int &thing);
int main()
{
    int strLen;
    //The value of strLen will be altered by the function.No need to return
    
    Stringlength("Dan",strLen);
    cout <<strLen<<endl;
    system("Pause");
}
//The second argument identifier in the function declaration can be any name.
//Doesn't have to be like the passed atgument,altough it will alter its content,because of the '&' operator 
int Stringlength(char *str,int &thing)
{
    int Length = 0;
    while(str[Length] != '\0')
    {
     
      Length++;
    }
    //Assigning length
    thing = Length;
    return Length;
}
