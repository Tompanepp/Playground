#include <stdio.h>

#define NUMBEROFDIGITS 10

main() {
    int character, numberOfWhiteCharacters, numberOfOtherCharacters = 0;
    int digitsCounts[NUMBEROFDIGITS];

    for(int i = 0; i < NUMBEROFDIGITS; ++i) {
        digitsCounts[i] = 0;
    }
    while((character = getchar()) != EOF) {
        if(character >= '0' && character <= '9'){
            ++digitsCounts[character - '0'];
        }
        else if(character == ' ' || character == '\t' || character == '\n'){
            ++numberOfWhiteCharacters;
        }
        else {
            ++numberOfOtherCharacters;
        }
    }
    printf("Number of digits = ");
    for(int i = 0; i < NUMBEROFDIGITS; ++i) {
         printf(" %d ", digitsCounts[i]);
    }
    printf(", number of white characters = %d and number of other character = %d\n", numberOfWhiteCharacters, numberOfOtherCharacters);

}