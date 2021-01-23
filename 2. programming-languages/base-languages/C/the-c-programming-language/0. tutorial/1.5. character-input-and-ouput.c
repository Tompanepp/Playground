#include <stdio.h>

/*
    C Standard library inptut and output model

    - Text input and output, regardless of where it comes from or is going, is dealt with
      as a stream of characters.
      A text stream is a sequences of characters divided into lines;
        each line consists of zero or more characters and is terminated by a new line
*/
main() {
    char c  = getchar();
    putchar(c);
    putchar('\n');
}