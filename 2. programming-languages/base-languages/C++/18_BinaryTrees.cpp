#include <iostream>
#include <iomanip>
#include "Btree.h"
#include <cstring>

using namespace std;

int main() {
    node root;
    node left;
    node right;

    root.key_value = 10;
    root.left = &left;
    root.right = &right;

    //Left node
    left.key_value = 6;
    left.left = 0;
    left.right = 0;

    //Right node
    right.key_value = 14;
    right.left = 0;
    right.right = 0;


    cout << setw(10) << root.key_value << endl
            << left.key_value << setw(15) << right.key_value << endl;

    cin.get();
}
