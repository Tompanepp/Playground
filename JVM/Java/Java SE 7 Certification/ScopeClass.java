public class ScopeClass{          
   private int i = 35;          
   public static void main(String argv[]){             
   //int i = 45;             
      ScopeClass s = new ScopeClass ();            
      //s.someMethod(); Question 1 this call will fail. The method is static
      
      //char d="d"; 
      char d = 'd'; //correction
      //float f=3.1415; 
      float f = 3.1415F;
      int i=34; //compile no errror 
      //byte b=257;
      boolean isPresent=true; //compile no errror        
   }          
   public static void someMethod(){             
      //System.out.println(i);          
   }
 
 }