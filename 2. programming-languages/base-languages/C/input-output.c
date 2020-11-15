#include <stdio.h>
#include <string.h>

int main() {
    int age;
    char initial;
    char firstName[30], lastName[30];
    int year, month, day;
    long int longInt = 327667000;
    float programTargetTemperature = 33.5;
    double pi = 3.141592653589793;
    printf("What is your first name? \n");
    scanf(" %s", firstName);
    printf("What is your last name? \n");
    scanf(" %s", lastName);
    printf("What is your initial?\n");
    scanf(" %c", &initial);
    printf("How old are you? \n");
    scanf(" %d", &age);
    printf("What is your birth date?\n");
    scanf(" %d/%d/%d", &year, &month, &day);

    printf("Your name is %s %s\n", lastName, firstName);
    printf("Your initial is %c\n", initial);
    printf("You are %d years old\n", age);
    printf("You were born on %d/%d/%d", year, month, day);
    printf("The temperature of the program is %.2f", programTargetTemperature);
    printf("The value of pi is %.15f\n", pi);
}