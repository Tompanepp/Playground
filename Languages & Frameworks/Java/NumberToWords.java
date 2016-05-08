
public class NumberToWords {

    private static final String[] ONES = {
        "Zero", "One", "Two", "Three", "Four", "Five",
        "Six", "Seven", "Eight", "Nine"};
    private static final String[] TEENS = {
        "Ten", "Eleven", "Twelve", "Thirteen", null, "Fifteen",
        null, null, "Eighteen", null};
    private static final String[] TENS = {
        null, null, "Twenty", "Thirty", "Forty", "Fifty",
        "Sixty", "Seventy", "Eighty", "Ninety"};

    public static void main(String[] args) {

        int number = 10;
        int nump = number%10;
        
        switch (nump)
                {
            case 0: System.out.println(ONES[number]); break;
            default: System.out.println("Number greater than 10");
        }
        if (number < 20) {
            int n = number - 10;
            String words = TEENS[n];
            if (words == null) {
                System.out.println(ONES[n] + "teen");

            } else {
                System.out.println(TEENS[n]);
            }
        } else {
            int n = number % 10;
            if ((number / 10 + n) == 0) {
                System.out.print("");
            } else {
                System.out.println();
            }

        }
    }
}
