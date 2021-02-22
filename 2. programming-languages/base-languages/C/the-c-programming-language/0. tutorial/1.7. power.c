#include <stdio.h>


int power(int base, int exponenet);

main() {
    printf("%d\n", power(2, 3)); //8
    printf("%d\n", power(3, 3)); //27
}


int power(int base, int exponenet) {
    int total = base;
    for(int i = 1; i < exponenet; ++i) {
        total = total * base;
    }

    return total;
}