package DomainLogicPatternsImplementations.RevenueRecognition.domainmodel.recognitionrules;

import DomainLogicPatternsImplementations.RevenueRecognition.domainmodel.Contract;

/**
 * Created by Praise on 2017/02/27.
 */
public abstract class RecognitionStrategy {
    public  abstract void calculateRevenueRecognitions(Contract contract);
}
