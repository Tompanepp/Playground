using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace EXCEPTION_HANDLING
{
    //It seems the directive "using Systme.IO" is required to use the upcoming
    class try_Catch_Demo
    {
        static void Main(string[] args)
        {
            //This throws the exception[An object of the Exception class]
            try
            {
                //Exceptions are method specific [You can check Excptions for each method in the .NET framework SDK]
                File.OpenRead("SecurityException");
            }
                //Exceptions are datatypes[The Exception class],therefore the need for an identifier ex
                //This catches the exception[Its a method so to speak with an Exception parameter]
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            Console.ReadLine();
        }
    }
//The finally Exception code is always executed.
//Ensures that subsequent code is executed by dealing wiht any other events(Exceptions)
    class FinallyDemo
{
    static void Main(string[] args)
    {
        FileStream outStream = null;
        FileStream inStream = null;

        try
        {
            outStream = File.OpenWrite("DestinationFile.txt");
            inStream = File.OpenRead("BogusInputFile.txt");
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        finally
        {
            if (outStream != null)
            {
                outStream.Close();
                Console.WriteLine("outStream closed.");
            }
            if (inStream != null)
            {
                inStream.Close();
                Console.WriteLine("inStream closed.");
            }
        }
        Console.ReadLine();
    } 
}
