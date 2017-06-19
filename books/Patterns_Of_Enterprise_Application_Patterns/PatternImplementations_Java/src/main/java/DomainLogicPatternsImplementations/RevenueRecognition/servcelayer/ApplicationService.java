package domainLogicpatternsimplementations.RevenueRecognition.servcelayer;

/**
 * Created by Praise on 2017/03/05.
 */
public class ApplicationService {
    protected EmailGateway getEmailGateWay() {
        return new EmailGateWayImpl();
    }

    protected IntegrationGateway getIntegrationGateWay() {
        return new IntegrationGateWayImpl();
    }
}
