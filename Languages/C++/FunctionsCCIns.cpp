
#include <iostream>
#include <iomanip>
using namespace std;

float square(float);
//void parameters(int x,y);//Not allowed void parameters(int x,int y);
void TestTheFunction();
float FahrenheitToCelsius(float);
int AmIAbleToChangeMyParameter(float &); //Accepts a reference

int main() {
    float arg = 2.0;
    cout << "The second power of " << arg << " is " << square(arg) <<endl;
    AmIAbleToChangeMyParameter(arg);
    //AmIAbleToChangeMyParameter(1.0);Won't work, pass by reference functions ONLY accept variables
    //AmIAbleToChangeMyParameter(&arg); Won't work, memory address is not a float references(I know it does on sound right)
    float passByRef = 1.0;
    cout <<setprecision(2) << passByRef  <<" Original " << endl;
    AmIAbleToChangeMyParameter(passByRef);
    cout << passByRef << " Changed " << endl;
    return 0;

}

float FahrenheitToCelsius(float temperature) {
    return ((temperature - 32) * (5 / 9));
}

void TestTheFunction() {
    FahrenheitToCelsius(31.0);
}

int AmIAbleToChangeMyParameter(float &test) {
    test = (int) test;
    return test;
}

float square(float operand) {
    return operand * operand;
}



