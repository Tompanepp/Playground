#include <iostream>

using namespace std;

struct PersonInfo
	{
                  string name,
				  address,
				  city;
	};
	struct Student
	{
            int studentID;
			PersonInfo pData;//Nested struc
			short yearInSchool;
			double gpa;
	};
	union Student2//Equivalent to struct but all values stored in the same memory location
	{
            int studentID;
			short yearInSchool;
			double gpa;
	};

//Function
Student getStudentData();

int main()
    {
		//Anonymous union.Need to be declared in main
		union
		{
			int ID;
			char name[10];
		};
        Student s  =  getStudentData();

    }

Student getStudentData()
    {
      Student tempStu;
	  cin >> tempStu.studentID;
	  getline(cin, tempStu.pData.name);
	  getline(cin, tempStu.pData.address);
      getline(cin, tempStu.pData.city);
      cin >> tempStu.yearInSchool;
      cin >> tempStu.gpa;
    return tempStu;
    }

