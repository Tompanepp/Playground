
import javax.swing.*;

class NumberToWords {

    public static int numOfDigits(int num) {
        int cnt = 0;
        while (num > 0) {
            cnt++;
            num = num / 10;
        }
        return cnt;
    } 
    public static void main(String[] args) throws Exception {

        //Letter base
        String[] singleWordNumbers = {"", " One", " Two", " Three", " Four", " Five",
            " Six", " Seven", " Eight", " Nine", " Ten", " Eleven", " Twelve",
            " Thirteen", " Fourteen", " Fifteen", " Sixteen", " Seventeen",
            " Eighteen", " Nineteen"};
        String[] tens = {"", "Ten", " Twenty", " Thirty", " Forty", " Fifty",
            " Sixty", " Seventy", " Eighty", " Ninety"};

        String WordVersion = "";

        String userNumber = JOptionPane.showInputDialog("Enter number");
        int num = Integer.parseInt(userNumber);
         
        int length = numOfDigits(num);

        switch (length) {
            case 2:      
                int quotient = num / 10;
                int remainder = num % 10;

                if (num > 19) {
                    WordVersion = tens[quotient] + singleWordNumbers[remainder];
                } else {
                    WordVersion = singleWordNumbers[num];
                }
                System.out.println(WordVersion);
                break;

            case 1:
                WordVersion = singleWordNumbers[num];
					 System.out.println(WordVersion);
                break;
            default:

                num = 0;
                System.out.println("Invalid Entry");
                System.exit(1);

        }
    }
}
