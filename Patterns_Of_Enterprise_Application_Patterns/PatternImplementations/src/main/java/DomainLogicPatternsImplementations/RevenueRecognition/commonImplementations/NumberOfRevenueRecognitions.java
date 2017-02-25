package DomainLogicPatternsImplementations.RevenueRecognition.commonImplementations;

/**
 * Created by Praise on 2017/02/25.
 */
public enum NumberOfRevenueRecognitions {
    One(1),
    Two(2),
    Three(3);

    private int numValue;

    NumberOfRevenueRecognitions(int numValue) {
        this.numValue = numValue;
    }

    public int getNumValue() {
        return numValue;
    }
}
