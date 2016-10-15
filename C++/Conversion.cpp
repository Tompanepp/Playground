

#include <iostream>

using namespace std;

void f(int a) {
    cout << "In f (int a)" << endl;
}

/*void f(double a) {
    cout << "In f (double a)" << endl;
}
 */
int main() {
    float a = 0.0;

    f(a);

    //Loss of value
    int i = 2147483646;
    short s = i;

    if (i == s)
        cout << "equal" << endl;
    else
        cout << "not equal" << endl;

    cout << s;

    //conversion flow

    long z = 2320232;
    double b = 0.0;

    cout << z + b;
    return 0;
}
