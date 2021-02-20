/*
    Context:

    Definitions:
        word = sequence of chracters that does not contain a blank, tab or newline
    Objective:
        Print histogram
            of word lengths 
                from input

    Assumptions:
        Legth on y x-axis in picture
        
    Constraints:
        blank characaters are not included in length(tab, space, newline etc)
        Maximum 10 characater lengths considered for histogram

    Algorithm flow:
        wordLengthCount: Array[50] -- can be later a CLI input
        currentWordCharacterCount = 0
        initilaise wordLengthCount to 0 for all elements
        read character
            if non blank character
                ++currentWordCharacterCount
            else
                increment wordLengthCount for this length of word
                ++wordLengthCount[currentWordCharacterCount]
                currentWordCharacterCount = 0 

        print index
        print a dot 
            for evey count in wordLengthCount for that index

    Example(s):
        aba  pr i 
        [1,1,1,1 ...]

        currentWordCharacterCount = 0

*/

#include <stdio.h>

#define MAXHISTOGRAMWORDLEGTH 10

main() { 
    int wordLengthCount[MAXHISTOGRAMWORDLEGTH];
    int currentWordCharacterCount = 0;
    int character;
    
    for(int i =0; i < MAXHISTOGRAMWORDLEGTH; ++i) {
        wordLengthCount[i] = 0;
    }

    while((character = getchar()) != EOF) {
        if(character != ' ' && character != '\t' && character != '\n') {
            ++currentWordCharacterCount;
        }
        else {
            ++wordLengthCount[currentWordCharacterCount];
            currentWordCharacterCount = 0; 
        }
    }
    
    printf("Word length histogram\n");
    for(int i = 0; i < MAXHISTOGRAMWORDLEGTH; ++i) {
        printf(" %d ", i);
        for(int j = 0; j < wordLengthCount[i]; ++j) {
            printf("-");
        }
        printf("\n");
    }

}


/*
    Performance
        N = Length of text stream
        HWLC = Highest word length count

        Time = O(N) + O(MAXHISTOGRAMWORDLEGTH * HWLC)
            Need to inspect each character in character stream

        Space = O(10) => O(1)
            Storage space for word character count
*/