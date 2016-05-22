
/**
 *
 * @author Developer
 */
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class NoDups {

    public static int [] removeDuplicates(int[] numbers) {

        ArrayList a = new ArrayList();
        int arrLength = numbers.length;
        a.add(numbers[0]);
        for (int i = 0; i < arrLength; i++) {
            for (int j = i + 1; j < arrLength; j++) {
                if (numbers[i] != numbers[j] && (i != j) && !a.contains(numbers[j])) {
                    a.add(numbers[j]);
                }
            }
        }
        int[] noduplicates = new int[a.size()];

        for (int i = 0; i < noduplicates.length; i++) {
             noduplicates[i] = (int)a.get(i);
        }
        
        return noduplicates;
    }

    public static void main(String[] args) throws Exception {

        int[] inputNumbers = {20, 100, 10, 80, 70, 1, 0, -1, 2, 10, 15, 300, 7, 6, 2, 18, 19, 21, 9, 0};
        //int [] inputNumbers = {0,0,0,0,0};
        System.out.println("Original Array");
        for (int i = 0; i < inputNumbers.length; i++) {
            System.out.println(inputNumbers[i]);
        }

        System.out.println("Removing duplicates from Array");
        int[] noduplicates = NoDups.removeDuplicates(inputNumbers);
        System.out.println("No duplicates Array");
        for (int i = 0; i < noduplicates.length; i++) {
            System.out.println(noduplicates[i]);
        }

    }

}
