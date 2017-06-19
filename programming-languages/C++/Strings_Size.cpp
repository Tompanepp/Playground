#include <iostream>
#include <string>
using namespace std;


void printStringInfo(string &stringInput)
{
  string string = "Test";
  cout << "length: " << stringInput.size() <<endl;
  cout << "buffer: " << stringInput.capacity() <<endl;
  cout << "max string length: " << stringInput.max_size() <<endl;
}

int main()
{
    int i = 0;
    string content = "The Content";

    do
    {
      printStringInfo(content);
      content += content;
      i++;
    }
    while(i < content.max_size());
    return 0;
}
