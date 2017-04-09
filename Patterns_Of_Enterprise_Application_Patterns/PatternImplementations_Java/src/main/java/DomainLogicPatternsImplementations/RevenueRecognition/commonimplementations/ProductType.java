package domainLogicpatternsimplementations.RevenueRecognition.commonimplementations;

/**
 * Created by Praise on 2017/02/20.
 */
public enum ProductType {

    Database ('D'),
    Spreadsheet('S'),
    WordProcessor('W');

    private char value;

    ProductType(char value) {
        this.value = value;
    }

    public char getValue() {
        return value;
    }
}
