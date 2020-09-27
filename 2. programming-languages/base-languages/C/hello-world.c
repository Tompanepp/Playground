#include <stdio.h>

int main() {
    printf("hello, world\n");
    printf("hello, world\b\n");
    printf("hello, world\b");
    printf("\n"); //interesting, adding this here disables the application of \b above
    printf("hello, world\t");
    printf("\n");
    printf("hello, world\\");
    printf("\n");
    printf("hello, world\l");
}