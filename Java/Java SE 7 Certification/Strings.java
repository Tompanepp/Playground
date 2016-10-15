//package StringTests;

public class Strings{

   public static void main(String argv[])
   {
   
      //Question 4
      StringBuilder sb = new StringBuilder();
      
      //a
      //sb.append(34.5);
      //b. 
      //sb.deleteCharAt(34.5);
      //c. 
      //sb.toInteger(3);
      //d. 
      sb.toString();
      
      
      //Question 5
      String s = "banana";
      //a
      //lastIndexOf(2,s); 
      //b. 
      System.out.println (s.indexOf('a'));
      System.out.println ("test");
      //c. 
         //s.charAt(2);
      //d. 
      //indexOf(s,'v');
      
      //Question 6
      
       String s1="Java";       
       String s2="java";       
       if(s1==s2) {          
         System.out.println("Equal");       
       } else {          
         System.out.println("Not equal");       
       }
       
       //a. 
         //s1==s2
       //b. 
         //s1.matchCase(s2) //Does not exist
       //c. 
         //s1.equalsIgnoreCase(s2) 
       //d. 
         //s1.equals(s2) //comparing the pointers/reference, will not pass
      
   }
}