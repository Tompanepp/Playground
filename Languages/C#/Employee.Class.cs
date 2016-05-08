using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleApplication2
{
    public class Employee
    {
        //Field(All objects in this class will have an ID)
        int EmployeeID;
        Employee Person1 = new Employee();
        public static void SetEmployeeID()
        {
            Random RandomNumberID = new Random();
        }


    }
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("");
            Employee.SetEmployeeID();
            Console.WriteLine(RandomNumberID);
 
        }
    }
}
