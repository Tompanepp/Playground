//Copy over data cleanup algorithm
//Praise p Tompane
//2012-01-16
//Copies non zero digits to new array

#include <iostream>

using namespace std;


int main()
{
    int data[] = {0,24,16,0,36,42,23,21,0,27};
    int length = 10;
    int data2[length];
    int position = 0,cnt = 0;


    while (cnt < length)
    {
        if(data[cnt] == 0)
        {
            cnt++;
        }
        else
        {
          data2[position] = data[cnt];
          position++;
          cnt++;
        }
    }
    cnt = 0;//Reseting cnt
    while(cnt < position)//Less than new length of cleaned data array
    {
        cout << data2[cnt] << " ";
        cnt++;
    }
    cin.get();
}
