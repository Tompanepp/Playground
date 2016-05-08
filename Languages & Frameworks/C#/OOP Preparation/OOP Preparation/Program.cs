/*
 * Created by SharpDevelop.
 * User: Praise
 * Date: 2015/05/19
 * Time: 09:07 PM
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;

namespace OOP_Preparation
{
	class car
	{
		private colour carColour;
		public colour carCol 
		{
			get{return carColour;}
			set{carColour = value;}
		}
	}
	
	public enum colour{red,blue,green};
	
	class Program
	{
		public static void Main(string[] args)
		{
			
			car bmw = new car();
			bmw.carCol = colour.blue;
			Console.WriteLine(bmw.carCol);
			Console.ReadKey();
		}
	}
}