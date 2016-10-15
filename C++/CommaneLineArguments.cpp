#include <fstream>
#include <iostream>

using namespace std;

int main ( int argc, char *argv[] )
{
    if(argc != 2)
    {
       cout<<"usage: "<< argv[0] <<" Test.txt"<<endl;
       cout << "Only one command line argument received"<<endl;
       cin.get();
    }
    else
    {
        ifstream inputStream("Test.txt");
        //is_open is an ifstream member function
        if(!inputStream.is_open())
        {
          cout <<"Could not open the file" <<endl;
        }
        else
        {
          char x;
          //Reads stream content into x
          inputStream.get(x);
          
          while(inputStream.get(x))
          {
            cout << x <<endl;
          }
          
        }
    }
        
    cin.get();
}
