/*
	Displays weird array stuff
*/
#include <stdio.h>

int main(){

	int x[] = {2,4,6,8};
	
	printf("%d\n",x[0]);
	printf("%d\n",0[x]);//Interpreted as x[1]
	printf("%d\n",*(x));
}

