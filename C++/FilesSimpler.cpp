#include <iostream>
#include <fstream>
using namespace std;

int main()
{
    //String array doesn't work.Why?
    char Content[100];
    fstream File ("Test.txt");
    //The >> operator reads until it finds a space then it stops
    File >> Content;
    cout << Content<<endl;
    File >> Content;
    cout << Content;


   system("Pause");
}
