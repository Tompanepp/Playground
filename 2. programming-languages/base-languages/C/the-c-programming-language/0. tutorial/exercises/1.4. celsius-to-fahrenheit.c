#include <stdio.h>

main() {

    float fahr, celsius;
    float lower, upper, step;

    lower = 0;
    upper = 150;
    step = 20;

    celsius = lower;
    printf("celsius\tfhar\n");
    while (celsius <= upper)
    {
        fahr = ((9.0/5.0) * celsius) + 32.0;
        printf("%6.1f\t%3.0f\n", celsius, fahr);
        celsius = celsius + step;
    }
}