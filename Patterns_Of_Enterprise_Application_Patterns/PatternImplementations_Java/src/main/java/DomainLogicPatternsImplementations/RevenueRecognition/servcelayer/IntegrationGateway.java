package DomainLogicPatternsImplementations.RevenueRecognition.servcelayer;

import DomainLogicPatternsImplementations.RevenueRecognition.domainmodel.Contract;

/**
 * Created by Praise on 2017/03/05.
 */
public interface IntegrationGateway {
    void publishRevenueRecognitioCalculation(Contract contract);
}
