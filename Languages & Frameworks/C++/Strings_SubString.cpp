
#include <iostream> 
#include <string> 

using namespace std;

int main(void) {
    string str = "12345";
    //int pos = 2;
    //cout << str.substr(pos).substr(pos).substr(pos).size() << endl;
    
    string S = "ABC";
    cout << S.substr(1, 1) << endl;
    cout << S.compare(1, 1, "BC") + S.compare(2, 1, S, 2, 2) << endl;
    cout << S.compare(2, 1, S, 2, 2) << endl;
    cout << S.substr(2,2) << endl;
    cout << S.substr(2,2);
    return 0;
}
/*
s.substr(1,2) describes a substring of the s string starting at its second character and ending at its third character (inclusively)
s.substr(1) describes a substring starting at second character of the s string and containing all remaining s's characters including the last one; the omitted length_of_substring parameter defaults to the covering all remaining characters in the s string
s.substr() is just a copy of the whole s string (the substring_start_position parameters defaults to 0)
 */


//Advanced Compare
//S.compare(substr_start, substr_length, other_string)
//S.compare(substr_start, substr_length, other_string,  other_substr_start, other_substr_length)