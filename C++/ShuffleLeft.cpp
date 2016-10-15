//Suffleleft data cleanup algorithm
//Praise P Tompane
//2012-01-16
//Cleans up zeros by moving numbers in the list/array an index left
//once a zero is found

#include <iostream>

using namespace std;

int main()
{
    int data[] = {0,24,16,0,36,42,23,21,0,27};
    int length = 10;
    int legitData = 10;
    int left = 0,right = 1;


    while(left < legitData)
    {
        if(data[left] != 0)
        {
            //Moving to next indexes
           left++;
           right++;
        }
        else
        {
          legitData--;//Decrementing the valid data count
          while(right < length)
          {
            data[right - 1] = data[right];
            right++;
          }
         right = left + 1;//Reseting right to One index after left
        }
    }
    int cnt = 0;
   while(cnt < legitData)
   {
       cout << data[cnt] << " ";
       cnt++;
   }
   cin.get();
}
