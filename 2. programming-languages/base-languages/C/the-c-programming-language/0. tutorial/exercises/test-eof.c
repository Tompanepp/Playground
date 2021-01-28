#include <stdio.h>


main() {
    int c = getchar();

    if(c == EOF) ///trigged with CTRL + D
        printf("End of file input");
    else
        printf("Non end of file value");
}