#include "Game.h"
//For 'kbhit()' and 'getch()' funtion
//conio stands for console input and output
#include <conio.h>///For kbhit
#include <iostream>
#include <Windows.h>//For timeGetTime
using namespace std;

//This gives us 30 frames per second
#define GAME_SPEED 33.33
//Member functions definition

bool Game::run()
{

     char key = ' ';
	 //Initilising frames
	 frameCount = 0;
	 //Initilising lastTime
	 lastTime = 0;
	 //Need to include the windows media library (winmm.lb)
	 startTime = timeGetTime();//timeGetTime() - Windows function,returns the number of milliseconds that the program has been running(In the windows.h header)

	 //q - quit
     //executes until game is existed
     while(key != 'q')
     {
               //This loop exits when a key is pressed
          //Passing memory address of key to getInput
         while(!getInput(&key))//While not true
		 {
			 //To control loop rate
			 timerUpdate();
         }
        cout << "Here is what  you pressed " <<key << endl;
     }
	 //The number of milliseconds the game has been running
	 cout << timeGetTime() - startTime << " Milliseconds" << endl;
	 //Frames persecond
	 cout << frameCount/((timeGetTime() - startTime)/1000) <<" Frames per second" <<endl;;
	 cout <<frameCount<<"frames"<<endl;
	 cout << "End of game"<<endl;
     return true;
}

bool Game::getInput(char *c)
{
   //kbhit is a C++ decalred funtion
   //if key pressed
	//Can be kbhit and getch.The below are accordding to the ISO standard
  if(_kbhit())
  {
    *c = _getch();

    return true;
  }
  else
    return false;
}
//Controls loop rate
void Game::timerUpdate()
{
	//Limitng the frames per second
	//lastTime stores the last time we got into the loop
	double currentTime = timeGetTime() - lastTime;

	//cout << currentTime <<endl;
	//Frame count won't be updated if current time is less than fifty
	//It will simply return to the function run()
	//The GAME_SPEED is so that it updates every 33.33 milliseconds.To achieve 30 frames per second
	//GAME_SPEED is defined above.#define GAME_SPEED 33.33
	if(currentTime < GAME_SPEED)
	{
		return;
	}
  //Increments everytime this function is called
  frameCount++;

  //Updating last time,with the time we were last in the loop
  lastTime = timeGetTime();
}
