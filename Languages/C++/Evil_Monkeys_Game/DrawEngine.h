

#ifndef DRAWENGINE_H
#define DRAWENGINE_H

class DrawEngine
{
    public:
		//Constructor
		DrawEngine(int xSize =30,int ySize = 20);
		~DrawEngine();

		//Returns index of the created sprite
       int createSprite(int index,char c);//Creates it only in memory

	   void deleteSprite(int index);
	   void eraseSprite(int pos_x,int pos_y);
	   void drawSprite(int index,int pos_x,int pos_y);

   protected:
      int screenWidth,screenHeight;
	  char spriteImage[16];//Array to store geme characters
   private:
	   void gotoxy(int x,int y);
	   void cursorVisibility(bool visibility);
};

#endif
