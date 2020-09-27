#include <iostream>

using namespace std;

void message(int times)
{
	if(times > 0)
	{
		cout << "This is a recursive function\n";
		message(times - 1);
	}
}

//Function showme
//Displays the value of the parameter after the recursive calls
void showMe(int arg)
{
	if(arg < 10)
		showMe(++arg);
	else
		cout << arg;
}
int main()
{
	message(5);
	
	int num = 0;
	showMe(num);
	return 0;
}
