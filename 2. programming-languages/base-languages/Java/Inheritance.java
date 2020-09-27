class foo{
	
	public void print(){
		
		System.out.println("I'm base method");
	}
}

class bar extends foo{
	
	public void print(){
		
		System.out.println("I'm child class method");
	}
	
}

public class Inheritance{
	
	public void main(String [] args){
		
		foo a = new foo();
		a.print();
		a = new bar();
		a.print();
	}
}