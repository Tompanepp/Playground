
public class Factorial {

    public static void main(String args[]) {

        int[] factorials = new int[10];
        int factorialsLength = factorials.length;

        for (int i = 0; i < factorialsLength; i++) {

            int result = 1;
            for (int j = i; j > 0; j--) {
                result = result * j;
            }
            factorials[i] = result;
        }
        for (int i = 0; i < factorialsLength; i++) {
            System.out.println(factorials[i]);
        }
    }
}
