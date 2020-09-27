
#include <string>
#include <iostream>

using namespace std;

int main() {
    string petname = "Heather"; //not a jeyword 
    string petname2("Hardy");
    string coooPet(petname2);

    //Concatenation
    string TheGood = "Jekyll", TheBad = "Hyde";
    cout << TheGood + " & " + TheBad << endl;
    cout << TheBad + " & " + TheGood << endl;

    //cout << "The man" + " nobody"; //Cannot concatenate literals

    cout << "STRING INPUT\n";

    /*string LineOfTypes;
    cin >> LineOfTypes;
    cout << LineOfTypes <<endl;
    cout <<"USING getline FOR INPUT\n";
    //cin.getline(LineOfTypes);
    getline(cin,LineOfTypes);
    cout << "Hamlet question " + LineOfTypes << endl;*/

    string input;
    string cininput;
    //cin >> cininput;
    getline(cin, input);
    cout << cininput;
    cout <<input;
    return 0;
}
