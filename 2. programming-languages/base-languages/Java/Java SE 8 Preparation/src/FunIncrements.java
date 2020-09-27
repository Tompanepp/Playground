public class FunIncrements{
	public static void main(String[] args){
		int x = 0;
		while(++x < 5){x += 1;} // x=1,x-2 => x = 2; x=3,x=4 => x = 4; x=5
		String message = x > 5 ? "Greater than" : "Less than";
		System.out.println(message+","+x); // Less than 5
	}
}