import java.util.ArrayList;
import java.util.Arrays;

class Main 
{

    public static  int[] mergeArray(int[] a, int[] b){
        int aLength = a.length;
        int bLength = b.length;


        int sorted[] = new int[aLength + bLength];

        System.arraycopy(a, 0, sorted, 0, aLength);
        System.arraycopy(b, 0, sorted, aLength, bLength);

        Arrays.sort(sorted);
        return sorted;
    }

    public static void main(String [ ] args) {
        int a[] = {4, 1, 5, 7, 7};
        int b[] = {4, 0, 1, 2, 3};
        int nums [] = mergeArray(a, b);

        for(int i = 0; i < nums.length; i++){
            System.out.println(nums[i]);
        }
    }
}
