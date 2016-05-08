#include "DrawEngine.h"

//Constructor
DrawEngine::DrawEngine(int xSize,int ySize )
{
	screenWidth = xSize;
	screenHeight = ySize;

	//set cursor visibility to false
}
//Destructor
DrawEngine::~DrawEngine()
{
	//set cursor visibility to true
}

int DrawEngine::createSprite(int index,char c)
{
	if(index >= 0 && index < 16)
	{
	  spriteImage[index] = c;
	  return index;
	}
	else
		return -1;
}

void DrawEngine::drawSprite(int index,int pos_x,int pos_y)
{
	//go to correct location
	//draw the image
}
void DrawEngine::gotoxy(int x,int y)
{
	/*//A HANDLE is a unique ID associated with something
	HANDLE output_handle;
	COORD posx
	output_handle = getStdHandle(STD_OUTPUT_HANDLE);
	setConsoleCursorPosition(output_handle,)*/
}

