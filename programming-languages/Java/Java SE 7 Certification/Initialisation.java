public class Initialisation{
          
private int i = 0;
private static String name;
 //implicitly initialised to 0         
   public static void main(String argv[]){
          Initialisation.name = "test";
          Initialisation.name = "Praise";
          
          System.out.println(name);
   }
}

/*FOLLOWUP
However, when a local variable is declared, it is not initialized. 
It is, therefore, important to either use the initialization operator when declaring the variable or to not use the variable until a value has been assigned to it. Otherwise, a syntax error will result.
*/