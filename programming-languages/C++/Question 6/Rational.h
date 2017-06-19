#ifndef RATIONAL_H
#define RATIONAL_H

#include <iostream>

using namespace std;

class Rational
{
    public:
        Rational();
        virtual ~Rational();

        Rational(int inNumerator,int inDenominator);
		Rational(int whole_number);


		void operator <<(Rational &p);
		void operator >>(Rational &p);
		bool operator == (Rational &p);
		bool operator < (Rational &p);
		Rational operator <= (Rational &p);
		Rational operator > (Rational &p);
		Rational operator >= (Rational &p);
		Rational operator + (Rational &p);
		Rational operator - (Rational &p);
		Rational operator * (Rational &p);
		Rational operator / (Rational &p);
    protected:
    private:
        int numerator,denominator;
};

#endif // RATIONAL_H
