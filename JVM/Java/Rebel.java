
import java.util.Arrays;

public class Rebel {

    public static void main(String args[]) {

        //2.
        int[] number = new int[5];
        String[] words = new String[5];

        //3. Populate
        for (int i = 0; i < 5; i++) {
            number[i] += i + 1;
        }

        for (int i = 0; i < 5; i++) {
            words[i] = Integer.toString(i + 6);
        }

        //4. Swap the numbers
        int temp;
        for (int i = 0; i < 5; i++) {
            temp = Integer.parseInt(words[i]);
            words[i] = Integer.toString(number[i]);
            number[i] = temp;
        }

        //5. Multiply numbers of first array by 4
        for (int i = 0; i < 5; i++) {
            number[i] *= 4;
        }

        //6. Multiply numbers of second array by 3
        for (int i = 0; i < 5; i++) {
            words[i] = Integer.toString(Integer.parseInt(words[i]) * 3);
        }

        //7. Print out the contents of both arrays.
        for (int i = 0; i < 5; i++) {
            System.out.println(number[i]);
            System.out.println(words[i]);
        }

        System.out.println();

        //8. Swap at even
        for (int i = 0; i < 5; i++) {
            if (i % 2 == 0) {
                temp = Integer.parseInt(words[i]);
                words[i] = Integer.toString(number[i]);
                number[i] = temp;
            }
        }

        //9. Print number 1 to 40 in number, words or both arrays
        // I am not sure I completely understand the objective here
        //The numbers in the range [1 to 40] will always be printed out
        int numberLength = number.length, wordsLength = words.length;
        for (int i = 1; i <= 40; i++) {

            for (int j = 0; j < numberLength; j++) {
                if (i == number[j] || i == Integer.parseInt(words[i])) {
                    System.out.println(i);
                }
            }
            System.out.println(i);
        }
        System.out.println();

        //10. Print every number from numbers array and its divisors in the number and words array
        for (int j = 0; j < numberLength; j++) {

            System.out.println(number[j]);
            for (int k = 0; k < numberLength; k++) {
                if (number[j] % number[k] == 0) {
                    System.out.println(k);
                }
            }

            for (int k = 0; k < wordsLength; k++) {
                if (number[j] % Integer.parseInt(words[k]) == 0) {
                    System.out.println(k);
                }
            }

        }

        //11. Print every number from numbers array and its divisors in the number and words array
        for (int j = 0; j < wordsLength; j++) {

            System.out.println(words[j]);
            for (int k = 0; k < numberLength; k++) {
                if (Integer.parseInt(words[j]) % number[k] == 0) {
                    System.out.println(k);
                }
            }

            for (int k = 0; k < wordsLength; k++) {
                if (Integer.parseInt(words[j]) % Integer.parseInt(words[k]) == 0) {
                    System.out.println(k);
                }
            }

        }

    }
}
