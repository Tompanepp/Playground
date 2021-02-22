#include <stdio.h>

float celciusToFahrenheit(float celsius);

int main() {

    float fahr, celsius;
    float lower, upper, step;

    lower = 0;
    upper = 150;
    step = 20;

    celsius = lower;
    printf("celsius\tfhar\n");
    while (celsius <= upper)
    {
        fahr = celciusToFahrenheit(celsius);
        printf("%6.1f\t%3.0f\n", celsius, fahr);
        celsius = celsius + step;
    }

    return 0;
}

float celciusToFahrenheit(float celsius) {
    return ((9.0/5.0) * celsius) + 32.0;
}

