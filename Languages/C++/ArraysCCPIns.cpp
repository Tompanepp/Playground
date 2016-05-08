
#include <iostream>
using namespace std;

int mainA() {
    int numbers[5], sum = 0;
    //Sum
    for (int i = 0; i < 5; i++)
        sum += numbers[i];

    //Assign same value
    int add = 1;
    for (int i = 0; i < 5; i++, add++) {
        numbers[i] = 2012 * add;
    }

    //Swap elements
    int temp = 0;


    temp = numbers[4];
    numbers[4] = numbers[0];
    numbers[0] = temp;
    temp = numbers[3];
    numbers[3] = numbers[1];
    numbers[1] = temp;

    //Better swap
    int betterSwapTemp;
    for (int i = 0; i < 5; i++, add++) {

        betterSwapTemp = numbers[i];
        numbers[4 - i] = numbers[i]; //numbers[i + 3]
        numbers[i] = betterSwapTemp;

    }

    //Initiation
    //where the value of any element is equal to its index
    int vector[5] = {0, 1, 2, 3, 4};
    int vector3[5] = {0, 1, 2};
    int vector2[] = {0, 1, 2, 3, 4};
    for (int i = 0; i < 5; i++, add++) {

        numbers[i] = i;
    }

    //Multidimensional arrays

    int chessboard[8][8];


    //Store temperatures per hour per month
    //24 * 7 * 31 = 744

    //int hourlyTemperature[7][24]; // Week
    float hourlyTemperature[31][24];
    float monthTemAverage = 0, sumTemp = 0;
    //Month temp average
    for (int day = 0; day < 31; day++) {
        for (int hour = 0; hour < 24; hour++) {
            sumTemp += hourlyTemperature[day][hour];
        }
    }
    monthTemAverage = sumTemp / 31;

    //Month noon average
    float noonTempSum = 0;
    for (int day = 0; day < 31; day++) {
        noonTempSum += hourlyTemperature[day][11];
    }
    noonTempSum = sumTemp / 31;

    //Highest temperature
    float highestTemp = hourlyTemperature[0][0];
    for (int day = 0; day < 31; day++) {
        for (int hour = 0; hour < 24; hour++) {
            if (hourlyTemperature[day][hour] > highestTemp) {
                highestTemp = hourlyTemperature[day][hour];
            }
        }
    }

    //HOT DAY :Non temperature = 20

    float hotTemp = 20;
    int hotDays = 0;
    for (int day = 0; day < 31; day++) {
        if (hourlyTemperature[day][11] == 20.0) {
            hotDays++;
        }
    }


    //RESET

    for (int day = 0; day < 31; day++) {
        for (int hour = 0; hour < 24; hour++) {
            if (hourlyTemperature[day][hour] > highestTemp) {
                hourlyTemperature[day][hour] = 0.00;
            }
        }
    }


    //3 Dimensional

    int buildings = 3, floors = 15, rooms = 20;
    int guests [buildings][floors][rooms];

    //Check vacancy on the 15th floor of the 3rd building

    int vacancies = 0;
    for (int room = 0; room < 20; room++) {
        if (guests[2][14][room] == 0) {
            vacancies++;
        }
    }



    return 0;
}