//Opens a file,reads the contents and counts the number of lines in the file
//Praise P. Tompane
//Updated 2015-09-29 to use exceptions

//Note: Does not work, fstream.open does not throw FileNotFound exception 

#include <iostream>
#include <fstream>
#include <exception>
using namespace std;

int main(int argc,char * arg[]) {

    char c;
    int lines = 0;
    ifstream input;
    string fileName = "Test.txt";
    if(argc != 2)
    {
        return 1;
    }
    try {
        input.open("Test.txt");
        //Reading contents
        while (input.get(c))//Returns true
        {
            cout << "Reading the file";
            if (c == '\n') {
                lines++;
            }
        }
        cout << "The total numbr of lines are #" << lines << endl;

    } catch (exception &exp) {
        cout << exp.what();
    }

    input.close();

    return 0;

}
