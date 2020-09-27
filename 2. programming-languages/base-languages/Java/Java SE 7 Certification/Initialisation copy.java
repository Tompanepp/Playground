public class Initialisation{
          
private int i = 0;
private String name;
 //implicitly initialised to 0         
   public static void main(String argv[]){
          Initialisation testI = new  Initialisation();
   }
}

/*FOLLOWUP
However, when a local variable is declared, it is not initialized. 
It is, therefore, important to either use the initialization operator when declaring the variable or to not use the variable until a value has been assigned to it. Otherwise, a syntax error will result.
*/