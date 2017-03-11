import domainLogicPatternsImplementations.RevenueRecognition.transactionscript.Gateway;
import domainLogicPatternsImplementations.RevenueRecognition.transactionscript.RevenueRecognitionService;
import domainLogicPatternsImplementations.RevenueRecognition.commonimplementations.DatabaseConnectionFactory;

public class App {

    public static void main(String[] args) {
        DatabaseConnectionFactory connectionFactory = new DatabaseConnectionFactory();
        Gateway gateway = new Gateway(connectionFactory);
        RevenueRecognitionService revenueRecognitionService = new RevenueRecognitionService(gateway);

        //Need business data
        long contractNumber = 1;
        revenueRecognitionService.calculateRevenueRecognitions(contractNumber);
    }
}
