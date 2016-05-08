
#include <iostream>

int main() {
    int ** ptrarr;
    int rows = 10;

    ptrarr = new int *[rows];

    //initiliazation

    for (int i = 0; i < rows; i++) {
        ptrarr[i] = new int[i + 1]; //int arrays
        for (int j = 0; j < rows; j++) {
            ptrarr[i][j] = i;
        }

    }
    //print
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < rows; j++) {
            std::cout << ptrarr[i][j] << std::endl;
        }
    }
    /*//CleanUpMemory
    for (int i = rows; i < rows; i--) {
        delete[]ptrarr[rows];
    }

    delete [] ptrarr;*/
    return 0;
}