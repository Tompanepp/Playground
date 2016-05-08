//Praise P. Tompane

//2012 - 02 - 09

//Program calculates the weighted average for a given student.



#include <iostream>


using namespace std;



int main()

{

	char name[26];

	char studentNo[9];

	int mark1,mark2,mark3,mark4,mark5,total;
	double average;

	int credits1,credits2,credits3,credits4,credits5;

	int dashes = 70;




	cout <<"WELCOME TO THE WEIGHTED AVERAGE CALCULATOR\n";

    cout <<"This program is intended to calculate the weighted average of a given student\n";



	for(int i = 0;i < dashes;i++)

	{

		cout << "-";

	}

	cout <<endl;

	cout <<"Please enter the name of the student: ";

	cin  >>name;

	cout <<"Please enter "<<name<<"'s student number: ";

	cin  >>studentNo;


	cout <<"Marks for module 1: ";

	cin  >>mark1;

	cout <<"Module 1 credits: ";

	cin  >>credits1;



	cout <<"Marks for module 2: ";

	cin  >>mark2;

	cout <<"Module 2 credits: ";

	cin  >>credits2;



	cout <<"Marks for module 3: ";

	cin  >>mark3;

	cout <<"Module 3 credits: ";

	cin  >>credits3;



	cout <<"Marks for module 4: ";

	cin  >>mark4;

	cout <<"Module 4 credits: ";

	cin  >>credits4;



	cout <<"Marks for module 5: ";

	cin  >>mark5;

	cout <<"Module 5 credits: ";

	cin  >>credits5;



	for(int i = 0;i < dashes;i++)

	{

		cout << "-";

	}


	cout <<endl;

	cout <<"Name: "<<name<<endl;

	cout <<"Student number: "<<studentNo<<endl;

	cout <<"Module number\tMark\tCredits\n";



	cout <<"\t1"<< '\t' << mark1 << '\t'<<" "<< credits1<<endl;
	cout <<"\t2"<< '\t' << mark2 << '\t'<<" "<< credits2<<endl;
	cout <<"\t3"<< '\t' << mark3 << '\t'<<" "<< credits3<<endl;
	cout <<"\t4"<< '\t' << mark4 << '\t'<<" "<< credits4<<endl;
	cout <<"\t5"<< '\t' << mark5 << '\t'<<" "<< credits5<<endl;


	for(int i = 0;i < dashes;i++)

	{

		cout << "-";

	}

	total = (mark1 * credits1) + (mark2 * credits2) + (mark3 * credits3) + (mark4 *credits4) + (mark5 * credits5);
	average = total/(credits1 + credits2 + credits3 + credits4 + credits5);
	cout << name <<"'s weighted average is: "<< average;



	return 0;



}
