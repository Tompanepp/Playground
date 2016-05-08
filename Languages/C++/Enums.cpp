#include <iostream>

using namespace std;

enum Day {MONDAY,TUESDAY,WEDNESDAY,THURSDAY,FRIDAY,SATURDAY};

int main()
{
    Day workDay = MONDAY;
    cout <<"Actual value of Monday is :"<<workDay<<endl;
    if(FRIDAY > THURSDAY)//Comparing internal numbers that the enumerators are stored as not the words
    {
        cout << "Friday is greater than Thursday \n";
    }
    //workDay = 1;//Won't work,need casting to Day first
    workDay = static_cast<Day>(1);

    workDay = FRIDAY ;

    cout << static_cast<Day>(1)<<endl;//Expect Tuesday but get 1,enum rep for Tuesday
    cout << workDay << endl;
    return 0;
}
