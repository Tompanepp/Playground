package DomainLogicPatternsImplementations.RevenueRecognition.domainmodel.recognitionrules;

import DomainLogicPatternsImplementations.RevenueRecognition.commonimplementations.Money;
import DomainLogicPatternsImplementations.RevenueRecognition.commonimplementations.NumberOfRevenueRecognitions;
import DomainLogicPatternsImplementations.RevenueRecognition.domainmodel.Contract;
import DomainLogicPatternsImplementations.RevenueRecognition.domainmodel.RevenueRecognition;

/**
 * Created by Praise on 2017/02/27.
 */
public class ThreeWayRecognitionStrategy extends RecognitionStrategy {
    private int firstRecognitionOffset;
    private int secondRecognitionOffset;

    public ThreeWayRecognitionStrategy(int firstRecognitionOffset, int secondRecognitionOffset){
        this.firstRecognitionOffset = firstRecognitionOffset;
        this.secondRecognitionOffset= secondRecognitionOffset;
    }

    @Override
    public void calculateRevenueRecognitions(Contract contract) {
        Money[] allocation = contract.getRevenue().allocate(NumberOfRevenueRecognitions.Three.getNumValue());
        contract.addRevenueRecognition(new RevenueRecognition(allocation[0], contract.getWhenSigned()));
        contract.addRevenueRecognition(new RevenueRecognition(allocation[1], contract.getWhenSigned().plusDays(firstRecognitionOffset)));
        contract.addRevenueRecognition(new RevenueRecognition(allocation[2], contract.getWhenSigned().plusDays(secondRecognitionOffset)));
    }
}
