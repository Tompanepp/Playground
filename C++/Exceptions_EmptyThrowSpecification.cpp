#include <iostream>
using namespace std;
class Class {
public:
	string msg;
	Class(string txt) : msg(txt) {}
};
void function(void) throw () {
	//throw string("object");
}
int main(void) {
    try {
      cout << "a";
	function();
    } catch(string &exc) {
	cout << "Caught!" << endl;
    }
    return 0;
}
