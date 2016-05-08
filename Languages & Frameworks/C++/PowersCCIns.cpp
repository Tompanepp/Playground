#include <iostream>

using namespace std;

int mainG() {

    int pow = 0;

    for (int exp = 0; exp < 20; exp++) {
        cout << "The power of " << exp << " to " << exp << " is " << exp * exp;
    }

    return 0;
}