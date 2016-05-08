#include <iostream>
class Foo
{
        public:
        Foo() { std::cout << "Foo's constructor" << std::endl; }
};
class Bar : public Foo
{
        public:
        Bar() { std::cout << "Bar's constructor" << std::endl; }
};

int main()
{
       //NB:
       //The parent constructor is called first then the child constructor
       //Look at the output for proof
        Bar bar;
        std::cin.get();
}
