#include <iostream>
#include "IntStack.h"
#include "MathStack.h"

using namespace std;

int main()
{
    /*//Demostration of the IntStack class
    int catchVar;//Holds values popped off the stack

    //Defining an IntStack to hold 5 values,hence 5 is passed to the
    //constructor,named stack
    IntStack stack(5);

    //Pushing values onto the stack
    cout << "Pushing 5\n";
    stack.push(5);
     cout << "Pushing 10\n";
    stack.push(10);
     cout << "Pushing 15\n";
    stack.push(15);
     cout << "Pushing 20\n";
    stack.push(20);
     cout << "Pushing 25\n";
    stack.push(25);


    //Popping
    //NB: function Pop stores the value it pop in the argument
    cout << "Popping..\n";

    stack.pop(catchVar);
    cout << catchVar<<endl;
    stack.pop(catchVar);
    cout << catchVar<<endl;
    stack.pop(catchVar);
    cout << catchVar<<endl;
    stack.pop(catchVar);
    cout << catchVar<<endl;
    stack.pop(catchVar);
    cout << catchVar<<endl;
   //End of Demostration of the IntStack class*/

   //Demonstration of the MathStack class
    int catchVar;//Holds values popped off the stack

    //Create a MathStack object.
    MathStack stack(5);

    cout <<"Pushing 3 and 6 onto the stack\n ";
    stack.push(3);
    stack.push(6);

    //Add the two values.
    stack.Add();

    //Displaying the sum
    stack.pop(catchVar);
    cout <<"The sum is : "<< catchVar <<endl;
    //cout << "The sum is : "<<stack.pop(catchVar)<<endl;
    //End of demostrating Add()

    //Sub()

    cout <<"Pushing 7 and 10 onto the stack\n ";
    stack.push(10);
    stack.push(7);

    //Subtracting the two values.
    stack.Sub();

    //Getting difference
    stack.pop(catchVar);
     //Displaying the difference
    cout <<"The difference is : "<< catchVar <<endl;

   //Mul()

    cout <<"Pushing 5 and 10 onto the stack\n ";
    stack.push(5);
    stack.push(10);

    //Subtracting the two values.
    stack.Mul();

    //Getting difference
    stack.pop(catchVar);
     //Displaying the difference
    cout <<"The product is : "<< catchVar<<endl;

     //Div()

    cout <<"Pushing 5 and 10 onto the stack\n ";
    stack.push(5);
    stack.push(10);

    //Subtracting the two values.
    stack.Div();

    //Getting difference
    stack.pop(catchVar);
     //Displaying the difference
    cout <<"The quotient is : "<< catchVar<<endl;
    return 0;
    cin.get();






}
