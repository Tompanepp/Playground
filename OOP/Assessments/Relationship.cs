

namespace Relationships
{
	class Book{
		private string Name;
		public string _bookName{
			
			get{return Name;}
			set{Name = value;}
		}
	}
	class Category{
		
		private string categoryName;
		
		
		public string _categoryName{
			get{return categoryName;}
			set{categoryName = value;}
		}
		
		public List<Book> bookList = new List();
		
	}
	class Program
	{
		public static void Main(string[] args)
		{
			Book b1 = new Book();
			
			Book b2 = new Book();
			
			Category arts = new Category();
			arts.bookList.Add(b1);
			arts.bookList.Add(b2);
			
			Category children = new Category();
			children.bookList.Add(b1);
			
			//book b1 is both part of the children and arts book categorie				
		}
	}
}