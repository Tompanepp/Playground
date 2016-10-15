#include <iostream>

using namespace std;

class Computer
{
      public:
             Computer();
             ~Computer();
             void setSpeed(int p);
             int readSpeed();
      protected:
           int processorSpeed;
      private:
};
//Constructor
Computer::Computer()
{
   processorSpeed = 0;
}
//Desstructor
Computer::~Computer()
{
}
//Member functions
void Computer::setSpeed(int p)
{
   processorSpeed = p;
}

int Computer::readSpeed()
{
    return processorSpeed;
}

int main()
{
    Computer compute;
    compute.setSpeed(100);

    cout << compute.readSpeed() << endl;
}
