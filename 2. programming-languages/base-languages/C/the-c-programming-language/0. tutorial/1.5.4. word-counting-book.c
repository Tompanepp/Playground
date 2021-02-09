#include <stdio.h>

/*
    word = sequence of chracters that does not contain a blank, tab or newline
    test cases:
        appple pie      grayvy          hahha
        ' '
        \t
        \n  
*/
#define INSIDEWORD 1
#define OUTOFWORD 0

main() {
    int character, numberOfNewLines, numberOfWords, numberOfCharacters, state;
    state = OUTOFWORD;
    numberOfNewLines = numberOfWords = numberOfCharacters = 0;

    while ((character = getchar()) != EOF) {
        ++numberOfCharacters;
        if(character == '\n') {
            ++numberOfNewLines;
        }
        if(character == ' ' || character == '\n' || character == '\t') {
            state = OUTOFWORD;
        }
        else if(state == OUTOFWORD) {
            state = INSIDEWORD;
            ++numberOfWords;
        }
    }
    printf("Number of words: %d, number of new lines: %d, number of characters: %d\n", numberOfWords ,numberOfNewLines, numberOfCharacters );
}