#include <stdio.h>

/*
    word = sequence of chracters that does not contain a blank, tab or newline
    test cases:
        appple pie      grayvy          hahha  
*/
main() {
    int character;
    int lastCharacter = ' ';
    int wordCount = 0;
    while ((character = getchar()) != EOF) {
        if(character == ' ' || character == '\t' || character == '\n') {
            if(lastCharacter != ' ' && lastCharacter != '\t' && lastCharacter != '\n'){
                wordCount++;        
            } 
        }
        lastCharacter = character;
    }
    printf("Number of words %d\n", wordCount);
}