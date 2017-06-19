package domainLogicpatternsimplementations.RevenueRecognition.domainmodel;

import domainLogicpatternsimplementations.RevenueRecognition.domainmodel.recognitionrules.CompleteRecognitionStrategy;
import domainLogicpatternsimplementations.RevenueRecognition.domainmodel.recognitionrules.RecognitionStrategy;
import domainLogicpatternsimplementations.RevenueRecognition.domainmodel.recognitionrules.ThreeWayRecognitionStrategy;

/**
 * Created by Praise on 2017/02/26.
 */
public class Product {
    private String name;
    private RecognitionStrategy recognitionsStrategy; //revenue recognition algorithm

    public Product(String name, RecognitionStrategy recognitionsStrategy) {
        this.name = name;
        this.recognitionsStrategy = recognitionsStrategy;
    }

    public static Product newWordProcessor(String name) {
        return new Product(name, new CompleteRecognitionStrategy());
    }

    public static Product newSpreadsheet(String name) {
        return new Product(name, new ThreeWayRecognitionStrategy(60, 90));
    }

    public static Product newDatabase(String name) {
        return new Product(name, new ThreeWayRecognitionStrategy(30, 60));
    }

    public void calculateRevenueRecognitions(Contract contract) {
        recognitionsStrategy.calculateRevenueRecognitions(contract);
    }
}
