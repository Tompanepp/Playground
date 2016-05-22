public class AutoBoxing{
          
public int i;
 //implicitly initialised to 0         
public static void main(String argv[]){
 
int a, b;

if(a.equals(b)) // raises error, int cannot be deferenced[it is not an object, cannot deference it!]
   System.out.println(a);         
}
}
