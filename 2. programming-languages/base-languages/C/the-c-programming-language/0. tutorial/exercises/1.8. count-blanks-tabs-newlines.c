#include <stdio.h>

main() {
    int count = 0;
    int character;

    while ((character = getchar()) != EOF){
        if(character == ' ' || character == '\t' || character == '\n') {
            count += 1;
        }
    }
    printf("Total blanks, tabs and newlines %d\n", count);
}