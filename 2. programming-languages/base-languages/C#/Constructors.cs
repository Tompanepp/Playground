using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CONSTRUCTORS
{
    class Employee
    {
        private double salary;
        
        //Every Empployee will have a defaylt salary value of 300
        //This is the default constructor
        public Employee()
        {
            salary = 300;
        }
        public int Salary
        {
            set;
            get;
        }
        /*NOt default.Depending on the value passed to the constructor during instantiation of the employee.That parameter will
        be that Employees initial salary */
        public Employee(double Sal)
        {
            salary = Sal;
        }

        public void DisplayPay()
        {
            Console.WriteLine("Yor salary is {0}",salary );
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            Employee Genetar = new Employee();
            Genetar.DisplayPay();
            //Calling the paramter constructor
            Employee Manager = new Employee (120000);
            Manager.DisplayPay();
            Console.ReadLine();
        }
    }
}
