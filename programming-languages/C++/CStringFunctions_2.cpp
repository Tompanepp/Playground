#include <iostream> //For cout
#include <cstring>  //For the string functions

using namespace std;

int main()
{
    char name[50];
    char copyofname[2];
    
    int length;
    
    cout << "Enter a name : ";
    cin.getline(name,50,'\n');
    
    length = strlen(name);
    cout <<"Your name is : "<<name << endl;
    
    strcpy(copyofname,name);
    cout <<"The copy of your name is : " << copyofname;
    cin.get();
}
