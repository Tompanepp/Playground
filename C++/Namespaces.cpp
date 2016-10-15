#include <iostream>

using namespace std;

//Anonymous namespace
namespace
{
  int MountainTroll = 900;
  int wizard = 9;
}

//Named namespace
namespace Modor
{
  int Troll = 89;
  float wizard = 0.2;
}

//This will extend the "orginal Modor namespace"
namespace Modor
{
  int darkWarrior = 90;
  int MountainTroll = 800;
}
int main()
{
  cout << "Modor Troll" << Modor::Troll << endl;
  cout << "Train troll" << Modor:: darkWarrior << endl;
  cout << MountainTroll;
  return 0;
}
