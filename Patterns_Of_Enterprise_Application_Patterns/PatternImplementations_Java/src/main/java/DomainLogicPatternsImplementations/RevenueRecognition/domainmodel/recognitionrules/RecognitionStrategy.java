package domainLogicpatternsimplementations.RevenueRecognition.domainmodel.recognitionrules;

import domainLogicpatternsimplementations.RevenueRecognition.domainmodel.Contract;

/**
 * Created by Praise on 2017/02/27.
 */
public abstract class RecognitionStrategy {
    public  abstract void calculateRevenueRecognitions(Contract contract);
}
