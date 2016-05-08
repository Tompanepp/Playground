#include <iostream>
#include <cstdlib>
#include <time.h>

using namespace std;

int main()
{
    int random;
    time_t seconds;
    //getting system time storing in seconds
	//the time() returns the number of seconds that have passed since midnight January 1, 1970.
    time(&seconds);
    
    //Seeding
    srand(seconds);
    
    random = rand();//% 2 + 1;
    
    cout << random << endl;
    cin.get();
}
