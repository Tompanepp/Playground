//Converts upper case letter to lower case using bitwise operators
//P. Praise Tompane
//2012 - December - 12

/*
Types of bitoperators
These comapare bits in binary representation of something
	1 = True
	0 = False
	
	| = or  : One of the bits needs to True,to evaluate to True
	& = and : Both bits need to True,to evaluate to True 
	^ = xor(Exclusive OR) : One bits needs to True and the Other False,
	to evaluate to True
*/
#include <stdio.h>

int main(){

	char letter;
	do{
		printf("Give me an upper case character: ");
		scanf("%c",&letter);
	
	}while(letter >= 'a' && letter <= 'z');
	
	printf("%c",letter | ('a' - 'A'));//('a' - 'A')Difference between upper case and lower case letter.We flip this bit to convert. i.e We OR letter with 32(In binary). Could use ('a' ^ 'A') : Their binaries evaluate to 32,if you 'xor' them
	
	return 0;

}

/*A = 	    10000001
  a = 	    11000001*/



