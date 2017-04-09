package domainLogicpatternsimplementations.RevenueRecognition.servcelayer;

import domainLogicpatternsimplementations.RevenueRecognition.domainmodel.Contract;

/**
 * Created by Praise on 2017/03/05.
 */
public interface IntegrationGateway {
    void publishRevenueRecognitioCalculation(Contract contract);
}
