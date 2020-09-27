
#include <fstream>
#include <string>
#include <iostream>

using namespace std;

int main(int argc, char * const argv[]) {

    string fileName = "";
    char character;
    int fileSize = 0;

    if (argc != 2) {

        cout << "File name not provided" << endl;
        return 1;
    }
    //fstream file("Test.txt");
    ifstream file;
    file.open("Test.txt");
    //fileStream.open(argv[1]);
    if (file){
        while (cin.get(character)) {
            fileSize++;
        }
        cout << "The Size of " << fileName << endl;
    }
    cout << "End" << endl;
    return 0;
}
