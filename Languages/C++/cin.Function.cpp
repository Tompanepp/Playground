#include <iostream>
#include <iomanip>
using namespace std;

int main()
{
  char cha;
  char name[10];
  cout << "Enter a caharacter \n";
  //stores even spaces while >> stores the specific character required
  cin >> cha;
  cout << "You entered " << cha << endl;
  cout << "Enter name:";
  cin.ignore();//Ignore '\n' character
  cin.getline(name,10);
  cout << endl;

}
