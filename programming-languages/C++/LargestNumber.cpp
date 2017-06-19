
#include <iostream>
using namespace std;

int mainD(void) {
    /* temporary storage for the incoming numbers */
    int number;
    /* we will store the currently greatest number here */
    int max = -100000;
    /* get the first value */
    cin >> number;
    /* if the number is not equal to -1 we will continue */
    while (number != -1) {
        /* is the number greater than max? */
        if (number > max)
            /* yes – update max */
            max = number;
        /* get next number */
        cin >> number;
    }
    /* print the largest number */
    cout << "The largest number is " << max << endl;
    /* finish the program successfully */
    return 0;
}