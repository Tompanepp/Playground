#include <stdlib.h>
#include <iostream>

using namespace std;

int main()
{
    //% 100 returns the remainder as the random number
    //Helps with limiting the reange
   int number = rand()%100; 
   int  guess = -1;
      
   int trycount = 0;
   
   while(guess != number && trycount < 8)
   {

     cout << "Please enter a guess: ";
     cin >> guess;
     if(guess < number)
     {

     cout<<"Too low"<<endl;
     trycount++;
     }
     if (guess> number)
     {

     cout<<"Too high"<<endl;
     trycount++;
     }
    // _______________;
    

    if(guess==number)
    {
     cout<<"You guessed the number" << endl;
    }
    
   }
   
   if( trycount == 8)
    {
     cout<<"Sorry, the number was: "<<number <<endl;
    }
    system("Pause");
    return 0;
}
