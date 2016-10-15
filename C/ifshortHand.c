//P. Praise Tompane
//2012-12-17 17:03:33 
//Shows use of if Shorthand

#include <stdio.h>



/*if(age < 13)
	print "Child"
else if(age >= 13  && age < 20)
	print "Teen"
else if (age >= 20)
	"Adult"*/
int main(){

	
	int age;
	scanf("%d",&age);

	printf("%s",age <= 12 ? "Child" :"Teen":"Adult");
	
	return 0;
}


