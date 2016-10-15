#include <iostream>

using namespace std;

struct xampl {
  int x;
  int y;
};

int main()
{  
  xampl structure;
  xampl *ptr;
  
  structure.x = 12;
  structure.y = 6;
  ptr = &structure; // Yes, you need the & when dealing with structures
                    //  and using pointers to them
  cout<< ptr->x <<endl  // The -> acts somewhat like the * when used with pointers
       <<ptr ->y<<endl;             //  It says, get whatever is at that memory address
                    //  Not "get what that memory address is"
 //Trying to see if each int occupies a different memory address
 cout << &structure.x << endl << &structure.y;
  cin.get();                    
}
