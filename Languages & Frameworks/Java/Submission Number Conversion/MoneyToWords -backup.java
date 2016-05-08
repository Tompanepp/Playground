
import javax.swing.*;

class MoneyToWords {

    //Word base
    static String[] singleWordNumbers = {"", " One", " Two", " Three", " Four", " Five",
        " Six", " Seven", " Eight", " Nine", " Ten", " Eleven", " Twelve",
        " Thirteen", " Fourteen", " Fifteen", " Sixteen", " Seventeen",
        " Eighteen", " Nineteen"};

    static String[] tens = {"", "Ten", " Twenty", " Thirty", " Forty", " Fifty",
        " Sixty", " Seventy", " Eighty", " Ninety"};

    static String[] places = {"", "Hundred", "Thousand"};

    public static String parseDecimal(String WordVersion, String userNumber, int decimalPoint) {
        //Move to function
        //arguments: userinput. decimalPoiint

        String decimal = userNumber.substring(decimalPoint + 1);
        int length = decimal.length();
        switch (length) {
            case 2:
                if (WordVersion == "") {
                    WordVersion = convertTwoNumbers(Integer.parseInt(decimal));
                } else if ((Integer.parseInt(decimal)) >= 1) {
                    WordVersion = WordVersion + " and " + convertTwoNumbers(Integer.parseInt(decimal));
                }
                break;
            case 1:
                if (WordVersion == "") {
                    WordVersion = tens[Integer.parseInt(decimal)];
                } else {
                    WordVersion = WordVersion + " and " + tens[Integer.parseInt(decimal)];
                }
                break;
            default:
                WordVersion = WordVersion + "";

        }
        return WordVersion;
    }

    //Gets number of digits in number
    public static int numOfDigits(int num) {
        int cnt = 0;
        while (num > 0) {
            cnt++;
            num = num / 10;
        }
        return cnt;
    }

    //Converts number with a length of 2
    public static String convertTwoNumbers(int num) {

        int quotient = num / 10;
        int remainder = num % 10;
        String conversion;

        if (num > 19) {
            conversion = tens[quotient] + " " + singleWordNumbers[remainder];
        } else {
            conversion = singleWordNumbers[num];
        }

        return conversion;
    }

    //Converts number with a length of 3
    public static String convertThreeNumbers(int num) {

        String conversion;

        int quotient = num / 100;
        int remainder = num % 100;

        if (remainder == 0) {
            conversion = singleWordNumbers[quotient] + " " + places[1];
        } else {
            conversion = singleWordNumbers[quotient] + " " + places[1] + " and";
            conversion += convertTwoNumbers(remainder);
        }
        return conversion;

    }

    public static void main(String[] args) throws Exception {

        String WordVersion = "";
        final String Currency = " Rands ", Cents = " cent(s)", and = " and ";
        String userNumber = JOptionPane.showInputDialog("Enter number");
        int decimalPoint = userNumber.indexOf('.');
        int num = -1;
        int length;

        if (decimalPoint != -1) {
            if ((userNumber.substring(0, decimalPoint)).equals("")) {
                num = 0;
            } else {
                num = Integer.parseInt(userNumber.substring(0, decimalPoint));
            }
        } else {
            if (!userNumber.equals("")) {
                num = Integer.parseInt(userNumber);
            } else {
                System.out.println("The provided value is an empty string");
            }
        }

        if (num == 0 && decimalPoint == -1) {
            //Boundary cases
            System.out.println("Zero" + Currency);
        } else if (num == 0 && decimalPoint != -1) {

            String temp = parseDecimal(WordVersion, userNumber, decimalPoint);
            if (temp == "") {
                System.out.println("Zero" + Cents);
            } else {
                System.out.println(temp + Cents);
            }

            //System.out.println(singleWordNumbers[num] + Currency + and + singleWordNumbers[num] + Cents);
        } else {

            while (num > 0) {
                length = numOfDigits(num);
                switch (length) {
                    case 5://Move to case 4, no "break" here
                    case 4:
                        int quotient = num / 1000;
                        int remainder = num % 1000;
                        String ltr = convertTwoNumbers(quotient);
                        WordVersion = ltr + " " + places[2];
                        num = remainder;
                        break;
                    case 3:
                        WordVersion = WordVersion + convertThreeNumbers(num) + Currency;
                        num = 0;
                        break;
                    case 2:
                        WordVersion = WordVersion + convertTwoNumbers(num) + Currency;
                        num = 0;
                        break;
                    case 1:
                        WordVersion = singleWordNumbers[num] + Currency;
                        num = 0;
                        break;
                    default:
                        num = 0;
                        System.out.println("Invalid Entry");
                }

            }
            if (decimalPoint != -1) {
                //call parseDecimal
                WordVersion = parseDecimal(WordVersion, userNumber, decimalPoint) + Cents;
            }
        }

        if (WordVersion != "") {
            System.out.println(WordVersion);
        }
    }
}
