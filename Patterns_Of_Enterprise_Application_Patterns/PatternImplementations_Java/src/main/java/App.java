import DomainLogicPatternsImplementations.RevenueRecognition.transactionscript.Gateway;
import DomainLogicPatternsImplementations.RevenueRecognition.transactionscript.RevenueRecognitionService;
import DomainLogicPatternsImplementations.RevenueRecognition.commonimplementations.DatabaseConnectionFactory;

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
