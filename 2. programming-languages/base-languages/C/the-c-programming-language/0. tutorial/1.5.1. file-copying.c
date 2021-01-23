#include <stdio.h>

main() {
    int character;
    //assingments are expressions; with the value of LHS after the assigment
    while((character = getchar()) != EOF) 
        putchar(character);
}