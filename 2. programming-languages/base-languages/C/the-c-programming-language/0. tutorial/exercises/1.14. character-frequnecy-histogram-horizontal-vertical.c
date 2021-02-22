/*
    Context:

    Definitions:
        
    Objective:
        Print histogram
            of frequencies 
                of different characters 
                    from input

    Assumptions:
        Input is ASCII character set
        
    Constraints:
        Maximum 128 characaters(ASCII)

    Algorithm flow:
        characterFrequency[128]        
        intialise characterFrequency to zeros(0)
        character
        characterCount = 0

        read character until EOF
            ++characterFrequency[character]
            ++characterCount

        print all characters on one line horizontally

        while characterCount > 0
            for length 0 to 128  ASCII(128)
                if count is 0 in characterFrequency
                    print empty
                else
                    print |
                    decrease count in characterFrequency
                    decrease characterCount

    Example(s):
        NOT USING REAL ASCII number in the array for simplicity

        input = aba  pr i 
        state:
            character = i
            characterFrequency = [1,2,1,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0]
            characterCount = 9

  ...   a b c d e f g h i j k l m n o p q r s t u v  x y z ...
      | | |             |             |   |
      | |
      |
*/

#include <stdio.h>

#define ASCIICHARACTERSETNUMBER 128

main() { 
    int characterFrequency[ASCIICHARACTERSETNUMBER];  
    int character, characterCount = 0;
    
    for(int i = 0; i < ASCIICHARACTERSETNUMBER; ++i) {
        characterFrequency[i] = 0;
    }

    while((character = getchar()) != EOF) {
        ++characterFrequency[character];
        ++characterCount;
    }

    for (int i = 0; i < ASCIICHARACTERSETNUMBER; ++i) {
        printf("character: %c frequency: %d", i , characterFrequency[i]);
        printf("\n");
    }
    

    printf("Character frequency histogram\n");

    for (int i = 0; i < ASCIICHARACTERSETNUMBER; ++i) {
        printf("%c", i);
    }
    printf("\n");

    //bug here to fix later
    while (characterCount > 0) {
        for (int i = 0; i < ASCIICHARACTERSETNUMBER; ++i) {
            if (characterFrequency[i] == 0){
                printf("%c", ' ');
            }
            else {
                printf("%c", '|');
                printf("%c", i);
                --characterFrequency[i];
            }
        }
        --characterCount;
        printf("\n");
    }
}


/*
    Performance
        N = Length of text stream
        HWLC = Highest word length count

        Time = O(N) + O(MAXHISTOGRAMWORDLEGTH * HWLC)
            Need to inspect each character in character stream

        Space = O(128) => O(1)
            Storage space for character frequncy count
*/