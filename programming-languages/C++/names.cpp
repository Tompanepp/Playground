//Generates random numbers,which are mapped to letter,in an attempt to generate a human name
//2012-12-18 21:51:47 
//P. Praise Tompane
#include <iostream>
#include <ctime>
#include <cstdlib>

using namespace std;

int main()
{
	time_t seconds;
	
	srand(time(&seconds));
	while(true){
	
		for(int i = 0;i < 26;i++){
			cout << (char) ('A' + rand() % 26);
		}
		cout << endl;
	}
	
	return 0;
}
