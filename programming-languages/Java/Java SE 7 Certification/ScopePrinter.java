public class ScopePrinter{      
   public int i;      
   public static void main(String argv[]){        
    SomeClass sc = new SomeClass();         // Comment line
    
       //a. 
       //System.out.println(i);
       //b. 
       System.out.println(sc.i);
       //c. 
       //System.out.println(SomeClass.i);
       //d. 
       System.out.println((new SomeClass()).i);      
      }
  }