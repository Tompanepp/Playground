#ifndef GAME_H
#define GAME_H
class Game
{
      public:
          //Returns true if game starts successfully
         bool run();
     
      protected:
            //Checks if a key was pressed and return true if so
            //and stores the pressed character in char *c
         bool getInput(char *c);   
         void timerUpdate(void);  
      private:
		  double frameCount;
		  double startTime;
		  double lastTime;

};
#endif
