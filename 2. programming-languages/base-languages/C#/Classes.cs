using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CLASSES
{

    class Employee
    {
        //characteristic of the class,all objects(Employees,as this is the Employee class) in it will have an IdNo.This is also known as fields
        //Called properties(Need to created,not only declared)
        //fField Identifiers start with small letters as their properties conventionally start with a Capital letter
        private int idNo;
        //Creating a property
        //Same type as field{obviously}
        public int IdNo
        {
            //The below are accessors
            //Notice that I use the variable idNo and not IdNo,as properties modify fields(The idNo field)
            //get accesseor means that the property can be read from
            /*get and set are like methods without parentheis.get is like a method that returns a value and set a method that accepts a
             parameter and assigns it to a value*/
            get
            {
                return idNo;
            }
            //set property means that the property can be written to
            set
            {
                //value is special word an Implicit Parameter that receives its vallue automatically
                idNo = value;
            }
            //If you want a property to be a read only you only create a get accessor(It can then only be read from)
        }
        //instance method,doesnt have the static keyword
        public void WelcomeMsg()
        {
            Console.WriteLine("Welcome message from Employee #{0}",IdNo);
            Console.WriteLine("How can i be of assistane?");
        }

        //The above are characteristics of the class and all objects of this class will have them,have an IdNo and be able to display the welcom msg
        //A class can have a main method
        public static void Main1()
        {
            //The Employee(); after the new operater is a method called a constructer, it constructs the object and always has the same name as the class it is making the object for
            //Below i am declaring an object called secretary its data type is Employee.Yes its class is its data type
            Employee Secretary = new Employee();
            //The Employee(),is actually a method that constructs an object for the Employee class,it's called a constructor.The method yes takes the name of the class

            //You access the methods of the class to which the object belongs by typing the object's Identifier,a dot then the method call
            Secretary.WelcomeMsg();

            //Passing objects to methods(in this case The welcomeMsg method)
            Employee Worker1 = new Employee();
            Worker1.IdNo = 223;
            Employee Worker2 = new Employee();
            DisplayDetails("First",Worker1 );
            DisplayDetails("Second", Worker2);
            Secretary.WelcomeMsg();
            //For the accessors' example
            //Declaring a object
            Employee Chef = new Employee();
            /* When assigning a value to the id in a method.The value is sent
            to the set accessor as an implicit parameter,and assigned to "value"
            */
            //IdNo is used as the value is sent to the properties and properties are public"Sort of used as public methods to access the private "fields""
            Chef.IdNo = 43;
            Chef.WelcomeMsg();
            Console.Read();
        }
        //Declaring a method to which I will pass Worker1 and 2,which will display their details
        internal static void DisplayDetails(string order,Employee emp)
        {
            Console.WriteLine("\n{0} Employee's mesaage:",order);
            //calling the welcome method(I indicate the object Identifier,then(.) and the method)
            emp.WelcomeMsg();
        }

    }

    //Using auto-implemented properties.No need for a field declaration
    //For this ocode to work.Change the methods to Main{This word seems to have a special meaning and there can only be one}
     class Employee3//just prac name
    {
         public static void Main()
         {
             Employee3 Worker = new Employee3();
             Worker.Id = 90;
             Worker.salary = 1000;
             Console.WriteLine(Worker.Id + " " +  Worker.salary);
             Console.ReadLine();
         }

             //Just properties,no specific fields
        public int Id { get; set; }
        public double salary { get; set; }


    }


    }
//NB:A program needs to have a "static void Main" method to run
        //This class is where I code the program,I can change it based on the name of my program

    class Program
    {
        static void MainCode(string[] args)
        {


        }

    }

