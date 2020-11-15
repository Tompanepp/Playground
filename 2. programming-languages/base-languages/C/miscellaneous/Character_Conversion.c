//Converts upper case letter to lower case
//P. Praise Tompane
//2012 - December - 12
#include <stdio.h>

int main(){

	char letter;
	do{
		scanf("%c",&letter);
	
	}while(letter >= 'a' && letter <= 'z');
	
	printf("%c",((letter - 'A') + 'a'));
	
	return 0;

}
