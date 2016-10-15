#include <iostream>

using namespace std;

int main()
{
    char text [9] = {'C','O','M','P','U','T','E','R'};
    char pattern [4] = {'M','P','U'};   
    int outerCnt = 0;//Outer loop
    int cnt = 0;//Inner loop
    int location = 1;
    
    
    while(outerCnt < 9)
    {
          while(cnt < 3)
          {
               if(pattern[cnt] == text[outerCnt])   
               {     
                  outerCnt +=1;
                  cnt +=1;
                  location = outerCnt;  
                  cout <<"Match found at character :" <<location<<endl;
              }
            else
            outerCnt +=1; 
          }
    }
    cin.get();
    return 0;
}
