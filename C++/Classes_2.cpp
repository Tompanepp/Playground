#include <iostream>
using namespace std;
//A class has three fields,declared below
class Point//A cartesian plane point
{
       //Constructors,Destructors and Functions go in the public section of the class
       //Its accessible to others 
        public:
             //CONSTRUCTOR
             //NB:We can assign default values.We wont need the default constructor
             //Default values should be assigned in the definition of the constructor and not the declaration
             //This becomes the default constructor
             //'this' is referal to the the current constructor
        Point(float f_x  = 1,float f_y  = 1,float f_z  = 1);    
        //Can also be
        //Point();//A constructor that doesn't assign anything
        //DESTRUCOR
        ~Point();//Needed to destroy a class instance.In order to deallocate memory
        //FUNCTIONS
        //Defintion
        //The below get values of the private data members
        float getX();
        float getY();
        float getZ();
        //The below set values to the private data members
               
        void setX(float X);
        void setY(float Y);
        void setZ(float Z);
         //To change the values all at once we can create another funtion that does so
         //To avoid calling each of the set funtions to change values
         void setXYZ(float X,float Y,float Z);
          //To avoid calling each of the get funtions to get values
         void getXYZ(float &X,float &Y,float &Z);
         //getXYZ funtion that uses pointers
         void getXYZ(float *X,float *Y,float *Z);
        
      
         
        
      private://Data members go here.We don't want them to publicly accessible
         float x,y,z;     
      protected:
                     
};
//The constructor/s need/s to be declared,beacuse they are function/s
//But it is called only when an instance is created
//However using '::' between it and the class name.We indicate that its a funtion of class Point
Point::Point(float f_x,float f_y,float f_z) 
{
   //'this' refers to the memory address of a class instance                
   cout << "We're in the constructor that has arguments " <<(int)this <<endl;
   
   //Assigning values to data members with arguments passed
   x = f_x;
   y = f_y;
   z = f_z;
   
  
}

//DECLARING THE CONSSTRUCTOR WITHOUT ARGUMENTS
/*Point::Point()
{
  cout << "We're in the default constructor" <<endl;
}*/
//DECLARING THE DESTRUCTOR
Point::~Point()//Desttroys the last one created first(Tech term is Fifo)
{
      //'this' refers to the memory address of a class instance
     cout << "We are in the destructor " << (int)this << endl;          
}

//DECLARING MEMBER FUNCTIONS
//float is the retun type
//They get data member's values
float Point::getX()
{
      return x;
}
float Point::getY()
{
      return y;
}
float Point::getZ()
{
      return z;
}

//Function getXYZ
//As we cannot return more than one value.We reference the values and get their
  void Point::getXYZ(float &X,float &Y,float &Z)//Takes in memory addresses
  {
       //Or get it directly
       //The values retrieved by each call is stored in the memory addresses of float x,y and z
       //This happens because we derefernced their memory addresses with &
        X = getX();//getX is called first,then itreturns a value.Then the assignment puts it in the memory address,which is that of x
        Y = getY();
        Z = getZ();
  }
  //'getXYZ' that takes memoey addresses
  //getXYZ funtion that uses pointers
  void Point::getXYZ(float *X,float *Y,float *Z)
  {
       //Changing the values in the referenced memory addresses
        *X = getX();
        *Y = getY();
        *Z = getZ();
  }

//They set data member's values
void Point::setX(float X)
{
     x = X;
}
void Point::setY(float Y)
{
     y = Y;
}
void Point::setZ(float Z)
{
     Z = z;
}
//Function setXYZ
void Point::setXYZ(float X,float Y,float Z)
{
     //Assigningg values
    /* x =X;
     y= Y;
     z =Z;*/
      //or assign like this
   //Call the functions that set the values to set them simultaneously
   //This is slower
   //But good prgramming practise and it is recommended
   setX(X);
   setY(Y);
   setZ(Z);
}

//Main
int main()
{
    //Creating instance
    //Point here refers to the constructor.'myLocation' is the name of the object
    //Point myLocation;//Using the default
    //Calling the constructor with arguments(overloading identifies the constructor for us)
    //Arguments are in the parenthesis of the instance to be created.It is creted along with them
    Point otherLocation(14,23,34);
    //Point anotherLocation(12,23);//The last argument would taken from the defaualt value
    
    //Calling the get Functions
    //Dot notation is used
    cout <<"Your points are " << otherLocation.getX()<< ","<< otherLocation.getY() <<","<<otherLocation.getZ()<<endl;
    
    //Calling set functions
    /*otherLocation.setX(90);
    cout <<"Your points are "<< otherLocation.getX() << endl;*/
    //Calling setXYZ
    otherLocation.setXYZ(23,67,34);
    //Calling 'get' functions
    //cout <<"Your points are " << otherLocation.getX()<< ","<< otherLocation.getY() <<","<<otherLocation.getZ()<<endl;
    
    //variables to store retrieved values in
    //The retrieved valus are that of otherLocation
    float x,y,z;
    //Calling getXYZ
    otherLocation.getXYZ(x,y,z);//We send only variables to the function and it dereferences them itself
    cout << x <<" " << y << " "<< z<<endl;
  
   //getXYZ funtion that uses pointers
    otherLocation.getXYZ(&x,&y,&z);
    cout << x <<" " << y << " "<< z<<endl;
    cin.get();
    return 0;
   
}
