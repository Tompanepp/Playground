
#include <string>
#include <iostream>

using namespace std;

class Pet
{
  public:
        Pet(string name);
};

Pet::Pet(string name)
{

}

class Dog: public Pet
{
  public:
      string name;
      Dog(string name);
      void bark();
};

Dog::Dog(string name):Pet(name){
    this->name = name;
}

void Dog::bark()
{
  cout << "Bark!Bark!Bark!\n";
}

int main()
{
  Dog * hardy = new Dog("Hardy");
  Pet * testCompatability = new Dog("testCompatability");
  //testCompatability->bark(); C++ does not perform runtime member binding, hence this fails
  static_cast<Dog *>(testCompatability)->bark();
  ((Dog*)testCompatability)->bark();
  cout<<hardy->name;
  return 0;
};
