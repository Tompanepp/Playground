using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace Files.and.Streams
{
    class Program
    {
        static void Main(string[] args)
        {


            //This separates the data items in the file.To make it easier to ealier read from
            const char DELIM = ',';
            //Termination ID
            const string END = "999";

            //Writes/outputs data to a file
            FileStream outputStream = new FileStream("Employee.txt", FileMode.Create, FileAccess.Write);
            //Writes data to a stream.Hence the linking to OutputFile.Wrtites from the program to the output stream,which writes to a file
            StreamWriter writer = new StreamWriter(outputStream);

            //Employee instance
            Employee _emp = new Employee();
            //Taking values
            Console.WriteLine("Enter ID");
            _emp.mID = Console.ReadLine();

            while (_emp.mID != END)
            {
                Console.WriteLine("Enter name");
                _emp.mName = Console.ReadLine();

                Console.WriteLine("Enter salary");
                _emp.mSalary = Convert.ToDouble(Console.ReadLine());
                //Writing data to file
                writer.WriteLine(_emp.mID + DELIM + _emp.mName + DELIM + _emp.mSalary);
                //NEXT EMPLOYEE
                Console.WriteLine("Enter the next employee's ID or {0} to end", END);
                _emp.mID = Console.ReadLine();

            }
            //Closing
            //NB:Close the writer first
            writer.Close();
            outputStream.Close();
            //END OF WRITING

            //READING
            //Variables to read data into
            string ReadData;
            //Stores only three items.the employee data at once
            string[] FileContents = new string[3];
            //Input stream for the program

            FileStream inputStream = new FileStream("Employee.txt", FileMode.Open, FileAccess.Read);
            //Linking to stream
            StreamReader reader = new StreamReader(inputStream);

            //Reading data
            ReadData = reader.ReadLine();

            if (ReadData != null)
            {
                Console.WriteLine("{0,-5}{1,-12}{2,8}", "ID", "Name", "Salary");
                //Read data is split and used to populate the array
                //When a ',' is found that latter content is stored into the array,and so forth.
                //Specifies how to separate the data into elements
                FileContents = ReadData.Split(',');
                //Assigning read values to _emp
                _emp.mID = FileContents[0];
                _emp.mName = FileContents[1];
                _emp.mSalary = Convert.ToDouble(FileContents[2]);

                //Reading data
                ReadData = reader.ReadLine();
            }
            //Console.WriteLine("{0,-5}{1,-12}{2,8}",_emp.mID, _emp.mName,_emp.mSalary);

            reader.Close();
            inputStream.Close();

        }
    }
}
