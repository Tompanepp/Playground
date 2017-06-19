#include <iostream>
using namespace std;

void bubbleSort(int a[]) {
    bool swapped = false;
    for (int i = 0; i < 4*4; i++) {
        if (!swapped) {
            int temp;
            if (a[i] > a[i + 1]) {
                temp = a[i];
                a[i] = a[i + 1];
                a[i + 1] = a[i];
            }
        }
    }
}

int main() {

    int array [] = {34, 53, 32, 56};
    bubbleSort(array);
    for (int i = 0; i < 4; i++) {
        cout << array[i] << endl;
    }
    return 0;

}