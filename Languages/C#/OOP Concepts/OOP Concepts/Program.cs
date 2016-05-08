
using System;

namespace OOP_Concepts
{
	//An interface states that an object has the ability to be used as another object
	//Gives something the ability to do something, or to be used as something else(something that is not)
	
	//Formally defines behaviour that objects must implement (A contractual obligation to implement the behaviour)
		//Other objets interacting with them, know that these guys implements specific type of behavious(on top of whatever else they can do)
	//Also a contract:
		//All behaviour that the interface specifies must be implemeted
	
	interface ICanBeUsedAsAChair{
		void sittingmessage();
	}
	
	class MilkCrate:ICanBeUsedAsAChair
	{
		public MilkCrate()
		{
			Console.WriteLine("I am a milk crate");
		}
		
		public void sittingmessage()
		{
			Console.WriteLine("I am a crate being used as a chair..hard work!");
		}
	}
	
	class Program
	{
		//Some notes:
	//static: loaded in memory the entire time/ all the time. No need for instance
	
		public static void canSitOn(ICanBeUsedAsAChair fakeChair)
		{
			fakeChair.sittingmessage();
		}
		public static void Main(string[] args){
			
			MilkCrate milkCrate = new MilkCrate();
			
			Program.canSitOn(milkCrate);
			
			Console.Read();`
		}
	}
}

