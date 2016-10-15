using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace INHERITANCE
{
    class Student
    {
        public string Name
        {
            get;
            set;
        }

        
        public string  Greet()
        {
            string BaseGrt;
            return  BaseGrt = " Hello Im " +  Name;

        }
        //Use virtual keyword to enable overriding
        virtual public void Status()
        {
            Console.WriteLine("I hate university");
        }
    }
    
    class New_Student:Student 
    {
        //The new operator takes away a warning.Its for hiding
        new public string Greet()
        {
           string Grt = base.Greet() + " Im new " ;
            
            return Grt;
        }
        //Im overriding the status method
        public override void Status()
        {
            Console.WriteLine("I will love university");
        }
    }
    
    class Program
    {
        static void Main(string[] args)
        {
            string G;
            Student S1 = new Student() { Name = "Karin" };
            G = S1.Greet();
            Console.WriteLine(G);
            S1.Status();
            

            
            New_Student S2 = new New_Student() { Name = "Merissa" };
            G = S2.Greet();
            Console.WriteLine(G);
            S2.Status();
             
            Console.Read();
             
        }

    }
}