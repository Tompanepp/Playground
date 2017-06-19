package domainLogicpatternsimplementations.RevenueRecognition.servcelayer;

/**
 * Created by Praise on 2017/03/05.
 */
public interface EmailGateway {
    void sendEmailMessage(String toAddress, String subject, String body);
}
