#include <stdio.h>
#include <cs50.h>

int calculateCheckSum(long long creditCardNumber);
int extractFirstTwoDigits(long long creditCardNumber);
int extractFirstDigit(long long creditCardNumber);
void printCreditCardIssuer(long long creditCardNumber, int checkSum);

const int BASE10 = 10;
const int BASE100 = 100;
const int ZERO = 0;

int main(void) {

    printf("Credit Card Number: ");
    long long creditCardNumber = get_long_long();
    int checkSum = calculateCheckSum(creditCardNumber);
    printCreditCardIssuer(creditCardNumber, checkSum);
    return 0;
}

void printCreditCardIssuer(long long creditCardNumber, int checkSum){
    int firstTwoDigits = extractFirstTwoDigits(creditCardNumber);
    int firstDigit = extractFirstDigit(creditCardNumber);

    if(checkSum % BASE10 != ZERO)
        printf("INVALID\n");
    else if (firstTwoDigits == 34 || firstTwoDigits == 37)
        printf("AMEX\n");
    else if (firstTwoDigits == 51 || firstTwoDigits == 52 || firstTwoDigits == 53 || firstTwoDigits == 54 || firstTwoDigits == 55)
        printf("MASTERCARD\n");
    else if (firstDigit == 4)
        printf("VISA\n");
}

int extractFirstDigit(long long creditCardNumber){
    while(creditCardNumber >= BASE10)
       creditCardNumber /= BASE10;
    return creditCardNumber;
}


int extractFirstTwoDigits(long long creditCardNumber){
    while(creditCardNumber >= BASE100)
       creditCardNumber /= BASE10;
    return creditCardNumber;
}

int calculateCheckSum(long long creditCardNumber) {

    bool sumDigitPrduct = true;
    int checkSum = 0;

    while(creditCardNumber != 0){
        int digit = creditCardNumber % BASE10;
        creditCardNumber = creditCardNumber / BASE10;

        if(checkSum != ZERO) {
            if(sumDigitPrduct) {
                int doubledDigit = digit * 2;
                while(doubledDigit != 0) {
                    int subDigit = doubledDigit % BASE10;
                    doubledDigit = doubledDigit / BASE10;
                    checkSum += subDigit;
                }
                sumDigitPrduct = false;
            }
            else {
                checkSum += digit;
                sumDigitPrduct = true;
            }
        }
        else{ checkSum += digit; }
    }
    return checkSum;
}