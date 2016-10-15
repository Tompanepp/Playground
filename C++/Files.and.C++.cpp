#include <fstream>
#include <iostream>
using namespace std;
int main()
{
    //NB:The << - stream insertion point inserts data into a stream(Like WriteLine in C#)
    //  :The >>  - Reads data from a stream(Like Readline in C#)
    //Instantiates and opens a links the file and the stream
    //No neeed for the open function
    ifstream InputFile("PRAISE.txt");

    //Declaring a file stream object
    //Reads and copies from files into variables
    ifstream InputToFile;
    //Creates files and can copy data from variables into files
    ofstream OutputFile;
    //Can do both the latter
    fstream Both;
    //Linking the object to the file
    //Two back slahes are required to represent one
    //Opens files and reads the data into memory
    InputToFile.open("Computer\\C:\\Users\\PRAISE\\Desktop\\PRAISE.txt");
    OutputFile.open("Computer\\C:\\Users\\PRAISE\\Desktop\\PRAISE.txt")
    OutputFile << "I love low language functions";
    cout << OutputFile;
    system ("Pause");
}
