#include <stdio.h>

#define MAXLINE 1000

int getLine(char line[], int maxline);
void copy(char to[], char from[]);

int main() {
    char line[MAXLINE];
    char longestLine[MAXLINE];
    int longest, newLineLength = 0;

    while ((newLineLength = getLine(line, MAXLINE)) != 0){
        if(newLineLength > longest) {
            copy(longestLine, line);
            longest = newLineLength;
        }
    }

    printf("Printing longest line\n");
    for(int i = 0; i < longest; ++i) {
        putchar(longestLine[i]);
    }
    
    return 0;
}

int getLine(char line[], int maxline) {
    int character;
    int length = 0;

    while ((character = getchar()) != EOF && length < maxline) {
        line[length] = character;
        ++length;
        if(character == '\n') {
            return length;
        }
    }

    if(character == EOF) {
        return 0;
    }
    return length;
}

void copy(char to[], char from[]) {
    for(int i = 0; i < MAXLINE; ++i) {
        to[i] = from[i];
    }
}