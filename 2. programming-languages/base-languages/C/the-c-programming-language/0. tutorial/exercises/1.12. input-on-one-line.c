/*
    Context:

    Definitions:
        word = sequence of chracters that does not contain a blank, tab or newline
        word breaking character = blank, tab or newline
    Objective:
        print input one word at a time

    Assumptions:
        only character input

    Constraints:

    Algorithm flow:
        character
        read character
            if word breaking character
                if currently printing a word
                    print new line
            else
                print character on current line

    Example(s):
        input = apple pie   gravvy
        output = apple
                 pie
                 gravvy

*/
#include <stdio.h>

#define INSIDEWORD 1
#define OUTOFWORD 0

main() {
        int character;
        int location = OUTOFWORD;
        while ((character = getchar()) != EOF){
            if(character == ' ' || character == '\t' || character == '\n'){
                if(location == INSIDEWORD) {
                    putchar('\n');
                    location = OUTOFWORD;
                }
            }
            else {
                putchar(character);
                location = INSIDEWORD;
            }
        }
        
}



/*
    Performance
        N = numbe of characters in text stream

        Time = O(N)
            We need to inpect each character in the text stream
        Space = O(1)
*/
