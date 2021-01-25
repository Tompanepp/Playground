#include <stdio.h>

/*
    C Standard library inptut and output model

    - Text input and output, regardless of where it comes from or is going, is dealt with
      as a stream of characters.
      A text stream is a sequences of characters divided into lines;
        each line consists of zero or more characters and is terminated by a new line

    - A character written between single quotes
        represents an integer value
          equal 
            to the numerical value of the character
              in the machine's character set
        This is a Character Constant
*/
main() {
    char c  = getchar();
    putchar(c);
    putchar('\n');
}