#include<iostream>
using namespace std;
 
// A NON-tail-recursive function.  The function is not tail
// recursive because the value returned by fact(n-1) is used in
// fact(n) and call to fact(n-1) is not the last thing done by fact(n)
unsigned int fact(unsigned int n)
{
    if (n == 0) return 1;
 
    return n*fact(n-1);
}


unsigned int factRecurse(unsigned int n, int acc)
{
    cout << "n " << n << " acc " << acc <<"\n";
    if (n == 0) return acc; //key thing here, we return the accumulator at the end, that's the "base" case
    //n - 1 : reduced problem space, acc * n : actual work for current problem space
    return factRecurse(n - 1, acc * n); //had a bug here acc * (n - 1), this is wrong, this is where we do the actual work with the current values
}

unsigned int factTailRecursive(unsigned int n)
{
    if (n == 0) return 1;
 
    return factRecurse(n, 1);
}


 
// Driver program to test above function
int main()
{
    //cout << fact(5);
    cout << factTailRecursive(5);
    return 0;
}