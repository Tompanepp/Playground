
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class UnsupportedException {

    public static void main(String[] args) {

        String[] strings = {"Java", "Unsupported", "Test"};

        List<String> list2 = new LinkedList<String>(Arrays.asList(strings));
        for (Iterator<String> iterator = list2.iterator();
                iterator.hasNext();) {
            String string = iterator.next();
            iterator.remove();
        }
        System.out.println("Removed all data from list");

    }

}
