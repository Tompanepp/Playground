#include <stdio.h>

main() {
    int lineNumbers = 0;
    int c;
    while ((c = getchar()) != EOF) {
        if(c == '\n') {
            lineNumbers += 1;
        }
    }
    printf("Number of lines: %d\n", lineNumbers);
}