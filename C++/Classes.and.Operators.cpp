#include <iostream>
using namespace std;
class Point
{
      public:
             //Constructor
             //These definitions are called prototypes
        Point(float f_x  = 1,float f_y  = 1,float f_z  = 1);
        //setXYZ
        void setXYZ(float X,float Y,float Z);
        //Individual set functions
        void setX(float X);
        void setY(float Y);
        void setZ(float Z);
        //getXYZ
        void getXYZ(float &X,float &Y,float &Z);
        //Individual get functions
        float getX();
        float getY();
        float getZ();
        
        //Overloading the = operator
        Point operator = (Point &p);
        
      private:
              float x,y,z;
      protected:               
};
//Constructor
Point::Point(float f_x ,float f_y,float f_z )
{
  x = f_x;
  y = f_y;
  z = f_z;                 
}
//setXYZ
void Point::setXYZ(float X,float Y,float Z)
{
     /*x = X;
     y = Y;
     z = Z;*/
     setX(X);
     setY(Y);
     setZ(Z);
}

//Three functins that set x,y and z
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
    z = Z;
}
 //getXYZ
void Point::getXYZ(float &X,float &Y,float &Z)
{
     X = getX();
     Y = getY();
     Z = getZ();
}
//Three functins that get x,y and z
float Point::getX()
{
           return x;
}
float Point::getY()
{
            return y;
}overload
float Point::getZ()
{
           return z;
}
//The first Point is the return type
 //'=' is the function name
Point Point::operator = (Point &p)
{
      //Assigning the values to the point
      setX(p.getX());
      setY(p.getY());
      setZ(p.getZ());
      return *this;//this is the point's memory address.We use * to get the values in the memory address.
}
//Overloading constructors
//Overloading '<<'
//This is a function that specically designed for my class,but not part of the class
//ostream is the return type.The function returns an outtput stream
//The use of 'operator' specifies that we are overloading an operator

//The 'ostream &stream' argument is the stream we are outputting to
//The 'Point &p' is what we are writing to the output stream

 //'operator' is the function name
ostream &operator <<(ostream &stream,Point &p) //We return a refernce to an ostream
{
  //Since p is an instance of class Point.It has three values and has access to all the functions
  //'stream' can be seen as cout
  //When using the << operator. cout is the left operand,which will be send first to the fuction
  //And then the instance of the Point class
    stream << p.getX() << " " << p.getY() << " " << p.getZ();
    return stream;
}
//Overloading '>>'
 //'operator' is the function name
istream &operator >>(istream &stream,Point &p) //We return a refernce to an ostream
{
        cout << "Enter point values" <<endl;
    float x,y,z; 
    stream >> x >> y >> z;//stream is cin
    //When using >>. cin is the left operand,which will be send first to the fuction
    //And then the instance of the Point class
    p.setXYZ(x,y,z);
    return stream;
}
int main()
{
    Point myLocation(1,2,3);//No need for parenthesis when there are no arguments
  //Using the overloaded >> operator
    cin >> myLocation;
    
    //cout is an instance of the ostream class
    //cout << myLocation<<endl;
    //The latter is like 
    //cout.operator << (cout,myLocation);
    //ostrem myOstream = cout.operator << (cout,myLocation);
    operator << (cout,myLocation)<<endl;//operator is just function*/
    
    //Assignign a pint to a point
    Point DansLocation = myLocation;
    cout << DansLocation;
    system("Pause");
    
}
