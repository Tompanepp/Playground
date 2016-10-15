#include <iostream>
using namespace std;
//Thing can be a pointer
int Stringlength(char *str,int *thing);
int main()
{
    int strLen;
    //The value of strLen will be altered by the function.No need to return
    //Passing 'strLen' won't work,beacause it's value is not a memory address
    //Pass the memory address of strLen by passing &strlen
    Stringlength("Dan",&strLen);
    cout <<strLen<<endl;
    system("Pause");
}

int Stringlength(char *str,int *thing)
{
    int Length = 0;
    while(str[Length] != '\0')
    {
     
      Length++;
    }
    //Assigning length to the memory address refernced by thing
    *thing = Length;
    return Length;
}
