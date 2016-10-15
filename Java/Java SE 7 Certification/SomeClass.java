public class SomeClass{
          
public int i;
 //implicitly initialised to 0         
public static void main(String argv[]){
 
 //excercise 1
System.out.println(argv[1]);         
   // excercise 2            
SomeClass sc = new SomeClass();
             
// Comment line
//Which line will result in either a compile or runtime error
sc.i = 5;
int j = sc.i;
sc.i = (int)5.0;
// Cannot implicitly[the explicit cast works] down cast values (double down to int)
System.out.println(sc.i);          
}
}
