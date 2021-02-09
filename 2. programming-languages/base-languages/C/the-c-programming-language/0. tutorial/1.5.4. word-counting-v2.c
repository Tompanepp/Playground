#include <stdio.h>

/*
    word = sequence of chracters that does not contain a blank, tab or newline
    test cases:
        appple pie      grayvy          hahha  
*/
#define INSIDEWORD 1
#define OUTOFWORD 0
main() {
    int character;
    int position = OUTOFWORD;
    int wordCount = 0;
    while ((character = getchar()) != EOF) {
        if(character == ' ' || character == '\t' || character == '\n') {
            if(position) {
                wordCount++; 
                position = OUTOFWORD;       
            } 
        }
        else {
            position = INSIDEWORD;
        }
    }
    printf("Number of words %d\n", wordCount);
}