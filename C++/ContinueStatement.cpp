

/* It appears we need to stop execution of the current turn
    and REASSESS the condition*/
#include <iostream>

using namespace std;

int mainC(void) {
    int number;
    int max = -100000;
    int counter = 0;

    do {
        cin >> number;
        if (number == -1)
            continue;
        counter++;
        if (number > max)
            max = number;
    } while (number != -1);
    if (counter)
        cout << "The largest number is " << max << endl;
    else
        cout << "Are you kidding? You haven't entered any number!" << endl;
    return 0;
}