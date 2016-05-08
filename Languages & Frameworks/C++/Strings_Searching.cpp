
#include <iostream>
#include <string>

using namespace std;

int main(void) {
    string greeting = "My name is Bond, James Bond.";
    string we_need_him = "James";
    char jChar = 'j';
    if (greeting.find(we_need_him) != string::npos)
        cout << "OMG! He's here!" << endl;
    else
        cout << "It's not him." << endl;
    int comma = greeting.find(',');
    if (comma != string::npos)
        cout << "Curious. He used a comma." << endl;

    if(greeting.find(jChar) != string::npos)
      cout << "His name started with a smaller!";
    return 0;
}
