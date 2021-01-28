#include <stdio.h>

main() {
    /*
        Q:
            How to deal with new lines and tabs?

        blankCount = 0

        read character
        check not EOF
            if blank
                increment blanCount
            else if blankCount >- 1
                print one blank
                print character
                reset blankCount
            else
                print character
    */

    int blankCount = 0;
    int character;

    while((character = getchar()) != EOF) {
        if(character == ' ') {
            blankCount++;
        }
        else if(blankCount >= 1) {
            printf(" ");
            printf("%c", character);
            blankCount = 0;
        }
        else {
            printf("%c", character);
        }
    }
}