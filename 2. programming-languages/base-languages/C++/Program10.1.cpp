#include <iostream>
#include <cstring>

using namespace std;

int main()
{
    char input;
    
    cout << "Enter any character" << endl;
    cin.get(input);
    cout <<"The character you entered is "<< input << endl;
    if(isalpha (input) )
    cout << "That's an alphabetic character.\n";
    if(isdigit)
    cout << "That's a numeric character.\n";
    
    system("Pause");
}
