#include <iostream>
#include <string>

using namespace std;

int main(void) {
	string TheString = "content";
	for(int i = 0; i < TheString.length(); i++)
		TheString[i] = TheString[i]  - 'a' + 'A';
	cout << TheString << endl;

  
	string NewString;
	NewString.append(TheString);
	NewString.append(TheString,0,3);
	NewString.append(2,'!');
	cout << NewString << endl;
	return 0;
}
