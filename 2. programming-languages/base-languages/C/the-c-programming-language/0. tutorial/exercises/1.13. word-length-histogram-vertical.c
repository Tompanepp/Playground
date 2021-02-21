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

        print all frequencies on one line
        
        while at least one wordLengthCount is not 0
            for evey count in wordLengthCount for that index
                if count is 0
                    print empty
                else
                    print a - 
                    decrease count in wordLengthCount at that index


    Example(s):
        aba  pr i 
        [1,1,1,1 ...]

        currentWordCharacterCount = 0

*/

#include <stdio.h>

#define MAXHISTOGRAMWORDLEGTH 10

main() { 
    int wordLengthCount[MAXHISTOGRAMWORDLEGTH];
    int currentWordCharacterCount, totalWords = 0;
    int character;
    
    for(int i = 0; i < MAXHISTOGRAMWORDLEGTH; ++i) {
        wordLengthCount[i] = 0;
    }

    while((character = getchar()) != EOF) {
        if(character != ' ' && character != '\t' && character != '\n') {
            ++currentWordCharacterCount;
            ++totalWords;
        }
        else {
            ++wordLengthCount[currentWordCharacterCount];
            currentWordCharacterCount = 0; 
        }
    }
    
    printf("Word length histogram\n");
    for(int i = 0; i < MAXHISTOGRAMWORDLEGTH; ++i) {
        printf("%3d", i);
    }
    printf("\n");

    while(totalWords > 0) {
         --totalWords;
        for(int i = 0; i < MAXHISTOGRAMWORDLEGTH; ++i) {
            if(wordLengthCount[i] == 0) {
                printf("%3c", ' ');
            }
            else {
                printf("%3c", ' ');
                --wordLengthCount[i];
            }
        }
        printf("\n");
    }
}


/*
    Performance
        N = Length of text stream
        NW = Number of words
        Time = O(N) + O(MAXHISTOGRAMWORDLEGTH * NW)
            Need to inspect each character in character stream

        Space = O(10) => O(1)
            Storage space for word character count
*/