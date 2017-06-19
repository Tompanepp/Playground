#include <iostream>
#include <exception>
using namespace std;
void function(void) throw(int) {
  //throw 3.14;
  throw 3;
}
int main(void) {
	try {
		function();
	} catch(double f) {
		cout << "Got double" << endl;
	} catch(bad_exception bad) {
		cout << "It's so bad..." << endl;
	}
	cout << "Done" << endl;
	return 0;
}
