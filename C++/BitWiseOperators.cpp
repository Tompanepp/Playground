
#include <iostream>
using namespace std;

int mainB()
{
    int i = 15, j = 22;
    
    //3 bit representations
    //i : 00000000000000000000000000001111
    //j : 00000000000000000000000000010110
    int log = i && j; //00000000000000000000000000000001
    
    int bit = i & j; //00000000000000000000000000000110 //Both must 1 to return 1
    int bit2 = i | j; //0000000000000000000000000011111
    
    int longneg = !i;//00000000000000000000000000000000
    int bitneg = ~i;//1111111111111111111111111111110000
    
    return 0;
}