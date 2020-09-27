public class TestClass{
  public static void main(String[] args){
    System.out.println("Hello World");

    float value1 = 102;
    float value2 = (int)102.0;
    float value3 = 1f * 0.0; //Won't compile : result is a double
    float value4 = 1f * (short)0.0;
    float value5 = 1f * (boolean)0; //Won't compile false * 1f invalid types for this operation
                                    //Correction: The cast of 0 to boolean is invalid
  }
}
