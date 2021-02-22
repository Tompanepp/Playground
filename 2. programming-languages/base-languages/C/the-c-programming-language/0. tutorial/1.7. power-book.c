#include <stdio.h>


//function prototype
int power(int base, int exponenet);

int main() {
    //default is "pass by value" except for arrays
    printf("%d\n", power(2, 3)); //8
    printf("%d\n", power(3, 3)); //27

    for(int i = 0; i < 10; ++i) {
        printf("exponent: %d base: 2 => %d base: -3 => %d\n", i, power(2,i), power(-3,i));
    }

    return 0;
}


int power(int base, int exponenet) {
    int total = 1;
    for(int i = 1; i <= exponenet; ++i) {
        total = total * base;
    }

    return total;
}