

namespace MotorFactory
{
	class Vehicle
	{
		private VehicleBody Body;
	
		private Engine vehicleEngine;
		
		private Chassis vChassis;
		
		private Wheels vWheels;
		
		public Chassis _Chassis
		{
			get{return Chassis}
			set{Chassis = value;}
		}
		
		
		public Wheels _Wheels
		{
			get{return Wheels}
			set{Wheels = value;}
		}
		
		
		public Engine _vehicleEngine
		{
			get{return vehicleEngine}
			set{vehicleEngine = value;}
		}
		
		public VehicleBody _Body
		{
			get{return Body;}
			set{Body = value;}
		}
	}
	
	class Chassis{}
	class Wheels{}
	
	class Engine
	{
		private string engineName;
		private int HorsePower;
		
		public string _engineName{
			get {return engineName;}
			set {engineName = value;}
		}
		
		public int _horsePower
		{
			get {return HorsePower;}
			set {HorsePower = value;}
		}
	}
	class VehicleBody{
		private string windScreens;
		private string doors;
		private string bonnet;
		private string boot;
		
		
		public string _windScreens
		{
			get {return windScreens;}
			set {windScreens = value;}
		}
			
		public string _doors
		{
			get {return doors;}
			set {doors = value;}
		}
					
		public string _bonnet
		{
			get {return bonnet;}
			set {bonnet = value;}
		}
							
		public string _boot
		{
			get {return boot;}
			set {boot = value;}
		}
			
		
		
	}
	
	class Program
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("Hello World!");
			
			// TODO: Implement Functionality Here
			
			Console.Write("Press any key to continue . . . ");
			Console.ReadKey(true);
		}
	}
}