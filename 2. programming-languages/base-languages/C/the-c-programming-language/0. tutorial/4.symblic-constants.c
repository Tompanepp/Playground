#include <stdio.h>

#define LOWER 0
#define UPPER 300
#define STEP  20

main() {

    printf("fahr \t celsius\n");
    for(int fahr = LOWER; fahr <= UPPER; fahr += STEP) {
        float celsius = (5.0/9.0) * fahr - 32.0;
        printf("%3d \t %6.1f\n", fahr, celsius);
    }
}