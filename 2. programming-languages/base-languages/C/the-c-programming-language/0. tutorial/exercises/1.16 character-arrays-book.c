/*
    Context:
        Have a program that determines the longest text line from a text stream
    Definitions:

    Objective:
        Revise the main routine of the longest-line program 
            so it will correctly print the length of arbitrary long input lines
                and as much as possible of the text.
    Assumptions:

    Constraints:

    Algorithm flow:
    
    Example(s):
        input = 
        state:

*/

#include <stdio.h>

#define MAXLINE 1000

int getLine(char line[], int maxline);
void copy(char to[], char from[]);

int main() {
    int len;
    int max;
    char line[MAXLINE];
    char longest[MAXLINE];

    max = 0;
    while ((len = getLine(line, MAXLINE))) {
        if(len > max) {
            max = len;
            copy(longest, line);
        }
    }
    if(max > 0)
        printf("As much of the longest string: %s\n", longest);
        printf("Longest string length: %d\n", max);
    
    return 0;
}

int getLine(char s[], int lim) {
    int c, i;
    for (i = 0; i < lim - 1 && (c = getchar()) != EOF && c != '\n'; ++i) {
       s[i] = c;
    }
    if(c == '\n') {
        s[i] = c;
        ++i;
    }
    s[i] = '\0';
    
    while((c = getchar()) != EOF && c != '\n')
        ++i;

    return i;
}

void copy(char to[], char from[]) {
    int i;
    i = 0;
    while((to[i] = from[i]) != '\0')
        ++i;
}

/*
    Performance
        N = Length of text stream
        Time = O(N)
            Need to inspect each character in character stream

        Space = O(1000) => O(1)
            Largest number of characters stored is 1000
*/