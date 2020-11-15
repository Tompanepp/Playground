#include <stdio.h>
#include <cs50.h>

void printPyramid(int pyramidHeight);

const int MAX_HEIGHT = 23;
const int MIN_HEIGHT = 0;

int main(void) {

    int pyramidHeight = 0;

    do {
        printf("Height: ");
        pyramidHeight = get_int();
    }
    while(pyramidHeight > MAX_HEIGHT || pyramidHeight < MIN_HEIGHT);
    printPyramid(pyramidHeight);
    return 0;
}

//runs O(n2) + some factor, I need to learn how to express computational complexity
void printPyramid(int pyramidHeight){
        int currentRow = 1;
        for(int i = pyramidHeight; i > MIN_HEIGHT; i--){
            //print (pyramidHeight - currentRow) spaces + currentRow # + 2 spaces + currentRow#
            for(int j =  pyramidHeight - currentRow; j > MIN_HEIGHT; j--)
                printf(" ");
            for(int k = currentRow; k > MIN_HEIGHT; k--)
                printf("#");
            printf("  ");
            for(int k = currentRow; k > MIN_HEIGHT; k--)
                printf("#");
           printf("\n");
           currentRow++;
    }
}