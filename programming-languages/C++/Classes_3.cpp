//Praise P Tompane
//2012-June-30,06:15
//Testing out classes

#include <iostream>
#include <cmath>

using namespace std;

#define PI 3,14

class Circle
{
    private :
            double mRadius;
            int mCircumference;
    public :
        double getArea();
        void setRadius();

};
//Function getArea
double Circle::getArea()
{
    PI * pow(mRadius,2);
}
//Function setRadius
void Circle::setRadius()
{
    mRadius = 8;
}

int main()
{
    Circle c;
    //cin >> c.setRadius();Doesn't work
    //cin >> c.mRadius;Doesn't work
}
