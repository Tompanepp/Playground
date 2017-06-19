
using System;

namespace Interfaces
{
	interface IArea{
		
		int calculateArea(int a, int b);
	}
	
	class Shape: IArea
	{
		private int perimeterLength;
		private int surfaceArea;
		private int length;
		private int breadth;
		
		public int _perimeter{get;set;}
		public int _surfaceArea{get;set;}
		public int _length{get;set;}
		public int _breadth{get;set;}
		
		public int calculateArea(int length, int breadth)
		{
			surfaceArea = length * breadth ;
			Console.WriteLine(surfaceArea);
		}
	}
	
	
	class Polygon: IArea
	{
		private int numSide;
	}
		
	class Circle: Shape{}
	class Triangle: Shape{}
	class Square: Shape{}
	

	
	class Program
	{
		public static void Main(string[] args)
		{
			Circle myC = new Circle();
			myC._length = 1;
			myC._breadth = 2;
			
			myC.calculateArea(myC._length,myC._breadth);
			
			Square mySquare = new Square();
			mySquare._length = 1;
			mySquare._breadth = 2
			mySquare.calculateArea(Square mySquare, mySquare._breadth)
			
		}
	}
}