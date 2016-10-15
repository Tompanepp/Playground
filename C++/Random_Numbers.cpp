/*Steven Billington
January 17, 2003
Ranexample.cpp
Program displays three random integers.
*/
/*
Header: iostream
Reason: Input/Output stream
Header: cstdlib
Reason: For functions rand and srand
Header: time.h
Reason: For function time, and for data type time_t
*/
#include <iostream>
#include <cstdlib>
#include <time.h>

using namespace std;

int main()
{
/*
Declare variable to hold seconds on clock.
*/
time_t seconds;
/*
Get value from system clock and
place in seconds variable.
*/
time(&seconds);
/*
Convert seconds to a unsigned
integer.
*/
srand((unsigned int) seconds);
/*
Output random values.
*/
cout<< rand() << endl;
cout<< rand() << endl;
cout<< rand() << endl;
cin.get();
return 0;
}
