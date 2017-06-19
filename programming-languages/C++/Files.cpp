#include <fstream>
#include <iostream>
using namespace std;
int main()
{
     //NB:The << - stream insertion point inserts data into a stream(sort of Like WriteLine in C#)
     //"cout" is more like a stream(or funtion) that writes data only to the screen(Sort of like "Console" in C#)
     //  :The >>  - Reads data into variables (sort of  Like Readline in C#)
     //"cin" captures input from the keyboard

     //Instantiates and opens a links the file and the stream
     //No neeed for the open function
     //ifstream InputFile("PRAISE.txt");

    //Declaring a file dtream object
    //Reads and copies from files into variables
    ifstream InputFile;
    //Creates files and can copy data from variables into files
    ofstream OutputFile;
    //Can do both the latter
    fstream Both;


    //Once linked OutputFile represents the file.What is done to it(Contents) is done to the file
    OutputFile.open("Test.txt");
    //The << writes the data to a file

    OutputFile << "I love low language functions";
    //Closing file
    OutputFile.close();
    //Displays memory address of the file and not the contents
    //cout << OutputFile<<endl;

    InputFile.open("Test.txt");
    //String array doesn't work.Why?
    char FileContent[100];
    //Reading into FileContent
    //The >> operator reads until it finds a space
    InputFile >> FileContent;
 
    cout << FileContent;
    InputFile.close();
    //Displays memory address of the file and not the contents
    //cout << InputFile;
    system ("Pause");
}
