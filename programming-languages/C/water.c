#include <stdio.h>
#include <cs50.h>


int main(void){
    int SHOWERWATEROUNCESPERMINUTE = 192;
    int WATERBOTTLEOUNCES = 16;

    printf("Minutes spent in the shower\n");
    int minutesShowered = get_int();
    int bottles = (minutesShowered * SHOWERWATEROUNCESPERMINUTE) / WATERBOTTLEOUNCES;

    printf("Minutes: %d\n", minutesShowered);
    printf("Bottles: %d\n", bottles);

    return 0;
}
