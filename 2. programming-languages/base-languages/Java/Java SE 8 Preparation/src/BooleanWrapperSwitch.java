public class BooleanWrapperSwitch{
  public static void main(String[] args){
  	Boolean test = new Boolean(false);
  	switch(test){
  		case true: System.out.println("True");
  		break;
  		case false: System.out.println("False");
  		break;
  		default: System.out.println("Default");
  	}
  }
}
