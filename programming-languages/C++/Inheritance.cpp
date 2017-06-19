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
        Point operator =(Point p);

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
}
float Point::getZ()
{
           return z;
}
//The first Point is the return type
Point Point::operator =(Point p)
{
      //Assigning the values to the point
      setX(p.getX());
      setY(p.getY());
      setZ(p.getZ());
      return *this;//this is the point's memory address.We use * to get the values in the memory address.
}
//Overloading constructors
//Overloading '<<'

ostream &operator <<(ostream &stream,Point &p) //We return a refernce to an ostream
{

    stream << p.getX() << " " << p.getY() << " " << p.getZ();
    return stream;
}
//Overloading '>>'
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
//---------------------------
//Point class end
//---------------------------
//By stating public Point.We get access to the public section of calss Point
class Vector : public Point
{
      public:
             //Constructor
             Vector(float X = 0,float Y = 0,float Z = 0);
             //An + operator for my class//NB:Function
             Vector operator +(Vector &p);
             //A - opereator
             Vector operator -(Vector &p);
             // * operator
             Vector operator *(float scale);
};
//Construtor definition

Vector::Vector(float X ,float Y ,float Z) : Point(X,Y,Z)
 {
   //x =5;//The point value.This would generate an error.You can move it to protected
   //It's good OOP practice to keep it prevate though
 }
 //Operator +
  //'operator' is the function name
 Vector Vector::operator + (Vector &p)
 {
       Vector outV;//Vector instance
       //Setting the values of outV to be the same of the its current values and those of the &p
       outV.setX(getX() + p.getX());
       outV.setY(getY() + p.getY());
       outV.setZ(getZ() + p.getZ());
       return outV;
 }
  //A - opereator
  //'operator' is the function name
  Vector Vector :: operator -(Vector &p)
  {
       Vector outV;//Vector instance.The one we return
       //Setting the values of outV to be the same of the its current values and those of the &p
       outV.setX(getX() - p.getX());
       outV.setY(getY() - p.getY());
       outV.setZ(getZ() - p.getZ());
       return outV;
  }
    // * operator
    //'operator' is the function name
   Vector Vector :: operator *(float scale )//Takes in a vector first.It knows who you are,'this' then takes in the float
   {
       Vector outV;//Vector instance.The one we return
       //Setting the values of outV to be the same of the its current values and those of the &p
       outV.setX(getX() * scale);
       outV.setY(getY() * scale);
       outV.setZ(getZ() * scale);
       return outV;
   }
   //Overloading * with left operand as the scalar
   //It's not part of the Vector class
   //if &operator.Address of the vetore is returned
 Vector operator *(float scalar,Vector v)
 {
       Vector outV;//Vector instance.The one we return
       //Setting the values of outV to be the same of the its current values and those of the &p
       outV.setX(v.getX() * scalar);
       outV.setY(v.getY() * scalar);
       outV.setZ(v.getZ() * scalar);
       return outV;
 }
//---------------------------
//Vector class end
//---------------------------


int main()
{
    Vector vect1(1,2,3);
    Vector vect2(1,2,5);
    Vector vect3;

    //cout << vect1 + vect 2 <<endl;

    //The oveloaded +
    //vect3 = vect1 + vect2;
	//The oveloaded -
	//vect3 = vect2 - vect1;
	//The oveloaded *
	//vect3 = vect1 * 2;
	//Generates an error,because the left operand isn't a vector.
	//We resolve this by creating an idependent function(Not part of class vector),that takes in the scalar first
	 vect3 = 2 * vect1;
    //And the function takes in a vector first
    cout <<vect3 <<endl;
    system("Pause");
	return 0;
}
