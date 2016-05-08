


namespace MethodDifference
{
	class Area
	{
		//This is a static method.
		//It does not operate on members of an instance
		//It can be accessed without creating an instance
		public static int calculateArea(int length, int breadth)
		{
			return length * breadth;
		}
	}
	
	class Person{
		
		private string name;
		
		public string personName
		{
			get { return personName;}
        	set { personName = value;}
		}
		
		//This is a non-static method
		//It operates on members on an instance(object)
		public void speakName() 
		{
			Console.WriteLine("My name is" + name);
		}
	}
	
	
	//Illustration of the actual difference at work
	class Program
	{
		public static void Main(string[] args)
		{
			//Instance method
			
			Person _Praise = new Person();
			_Praise.personName = "Papudi Praise Tompane";
			//I need to instanstiate an object of type Person to access the speakName method
			//This is an instance method
			_Praise.speakName();
			
		
			//Static method
			//I do not need an instance of the class Area to access this method
			//I simply call it like I did below
			int length = 2, breadth = 2;
			int myArea = Area.calculateArea(length,breadth)
			
			Console.WriteLine(myArea);
			
		}
	}
}