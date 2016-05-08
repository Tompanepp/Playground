#include <iostream>
using namespace std;

//A structure is a grouping of variables into one unit.
//We can then just use it as a datatype
struct character
{
    int age;
    char gender;
    //*name is a pointer with no memory allocated for it
    //we make it a pointer as we do not know the length the name might be
    //NB:We use take only memory that we need
    char *name;
};//End it with a semicolon


int main()
{
    character zak;//An instance of struct character
    //Dot notation
    zak.age = 22;
    zak.gender = 'M';
    //We use new to take memory.
    //Not advisable to just take 80 bytes of memory,of which some might not be used
    zak.name = new char[80];
    //Getting name

    cout << "Enter name"<<endl;
    cin >> zak.name;
    cout <<"zak's new name is :" << zak.name <<endl;
    cout <<"zak's age is:" << zak.age <<endl;
    //Deallocate taken memory
    delete zak.name;

    //PONITERS AND STRUCTURES
    //*player Points to the struct(character)
    character *player;//Is not pointing to any memory yet

    player = new character;//Creating a new character
    //Player is just an address not an instance of the character struct . As such player.age etc won't work
    //Player is simply a pointer to access the individual components of the character struct
    player-> age = 19;
    player->gender = 'm';
    //You canuse this as well
    //*player will point to the first element of character.Just like in a array
    (*player).age = 90;

    cout<<"PONITERS AND STRUCTURES" <<endl;
    cout <<"player age :" << player->age <<endl << "player gender :" << player->gender<<endl;

    delete player;
    return 0;
    system("Pause");
}
