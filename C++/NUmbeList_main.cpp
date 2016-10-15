//Praise P Tompane
//2012-July-01,20:08
//Demostrate linklist operations

#include <iostream>
#include "NumberList.h"
#include "NumberList.cpp"

using namespace std;

int main()
{
	NumberList scores;

	scores.appendNode(2.5);
	scores.appendNode(3.0);
	scores.appendNode(3.5);
	scores.displayList();
	scores.deleteNode(3.0);
	scores.displayList();
	
	return 0;
}
