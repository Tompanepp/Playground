import DomainLogicPatternsImplementations.RevenueRecognition.TransactionScript.Gateway;
import DomainLogicPatternsImplementations.RevenueRecognition.TransactionScript.RevenueRecognitionService;
import DomainLogicPatternsImplementations.RevenueRecognition.commonImplementations.DatabaseConnectionFactory;

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
