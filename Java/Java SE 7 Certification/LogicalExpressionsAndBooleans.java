public class LogicalExpressionsAndBooleans{

   public static void main(String argv[])
   {
            //Inverses
            
               final int LEGAL_AGE = 18;
               int num = 12;
               if(num < LEGAL_AGE)
                  {//Do not give them alcohol
                  }
               else
                  {//Give them alcohol
                  }
             
            
               if(num >= LEGAL_AGE)
                  {//Give them alcohol
                  }
               else{
                  //Do not give them alcohol
                  }
                  
            //Booleans in place of Logical expressions
             boolean isLegalAge = num >= LEGAL_AGE;
             System.out.println(isLegalAge);
             
              if(isLegalAge) //Looks fr true
              { //Get then drunk
                  System.out.println("Getting drunk");
              }
             else
               {//Stay away
                  System.out.println("Running away");
               }
               
              //Inverse
             if(!isLegalAge)
               {//Stay away
               }
             else
               {//Get then drunk
               }
   }
   
 }