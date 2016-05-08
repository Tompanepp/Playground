//Opens a file and dtermines the size of the file
#include <iostream>
#include <fstream>
#include <string>
#include <cstring>
using namespace std;

int main() {
    char character;
    int fileSsize = 0;
    //files stream
    ifstream input;
    input.open("Size.txt");
    if (!input) {
        cout << "File not found";
    }
    //Reading content
    //get function reads into argument
    while (input.get(character)) {
        fileSsize += 1;

    }
    cout << fileSsize - 1 << "bytes big" << endl;
    //cout << size - 1 <<" bytes"<<endl;
    /*for(int i = 0;i < 3;i++)
    {
       while(isalpha(Contents[i]))
       {
          size +=1;
       }

    }*/

    system("Pause");
}
