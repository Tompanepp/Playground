
#include <string>
using namespace std;

struct DATE {
    int year, month, day;
};

struct STUDENT {
    string name;
    float hoursOnSite;
    int recentChapter;
    /*STUDENT a; //Cannot have this. Struct declaration is not yet done.
                //STUDENT does not exist at this point*/
    DATE lastVisit;

}; //NOTE THE SEMI COLON

int main() {
    STUDENT students[10000];
    
    //Struct initiliaesrs
    //These only work at declaration
    //This will assign year = 2012,month = 12 and day = 21
    DATE date = {2012, 12, 21};
    STUDENT he = {"Bond", 1, 21,
        {2012, 12, 21}}; 
    
        //Dont appear to work inside arrays 
    /*students[0] = {"Bond", 1, 21,
        {2012, 12, 21}}; */
    STUDENT alumni[10000] = {"Bond", 1, 21,
        {2012, 12, 21}};
    STUDENT nobody =  {};
    return 0;
}