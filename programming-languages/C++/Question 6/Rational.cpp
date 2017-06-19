#include "Rational.h"

Rational::Rational()
{
    numerator = 0;
	denominator = 1;
    //ctor
}
Rational::Rational(int inNumerator,int inDenominator)
{
	numerator = inNumerator;
	denominator = inDenominator;
}
Rational::Rational(int whole_number)
{
	numerator = whole_number;
	denominator = 1;
}
Rational::~Rational()
{
    //dtor
}
void Rational:: operator <<(Rational &p)
{
}
void Rational:: operator >>(Rational &p)
{
    numerator = p.numerator;
    denominator = p.denominator;
}
bool Rational::operator == (Rational &p)
{
    if(numerator * p.denominator == denominator * p.numerator)
        return true;
    else
        return false;
}
bool Rational::operator < (Rational &p)
{
    if((denominator > 0 && p.denominator > 0) && (numerator * p.denominator < denominator * p.numerator))
        return true; //Fraction object is less than parameter fraction#
    else
        false;
}
Rational Rational::operator <= (Rational &p)
{
}
Rational Rational::operator > (Rational &p)
{
}
Rational Rational::operator >= (Rational &p)
{
}
Rational Rational::operator + (Rational &p)
{

}
Rational Rational::operator - (Rational &p)
{
}
Rational Rational:: operator * (Rational &p)
{
}
Rational Rational:: operator / (Rational &p)
{
}
