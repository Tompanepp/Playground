//Converts integers to binary and prints itusing bitwise operators
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
       << = Left shift : Moves a bit,by n spaces to the left
       >> = Right shift : Moves a bit,by n spaces to the right
*/
#include <stdio.h>

int main(){

	int input;
	do{
		printf("Give me an integer: ");
		scanf("%d",&input);
	
	}while(input < 0);
	int numOfBits = sizeof(int) * 8;
	for(int i = numOfBits;i > 0;i--){
	
		int isOne = input & (1 << i);//Left shifts c
		if(isOne)//1 evaluates to true
			printf("1");
		else
			printf("0");
	}
		//printf("%d",c & numOfBits<< (1 + numOfBits)? : 1 : 0);//<< (1 + i) left shifts 1 on each iteration by i
	
	return 0;
}
