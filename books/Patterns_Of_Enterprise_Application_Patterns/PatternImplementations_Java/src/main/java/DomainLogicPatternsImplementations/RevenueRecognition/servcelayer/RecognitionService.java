package domainLogicpatternsimplementations.RevenueRecognition.servcelayer;

import domainLogicpatternsimplementations.RevenueRecognition.commonimplementations.Money;
import domainLogicpatternsimplementations.RevenueRecognition.domainmodel.Contract;
import org.joda.time.LocalDate;

/**
 * Created by Praise on 2017/03/05.
 */

//Note the use of the domain mode previously implemented
public class RecognitionService extends ApplicationService {
    public void calculateRevenueRecognitions(long contractNumber) {
        Contract contract = Contract.readForUpdate(contractNumber);
        contract.calculateRecognitions();
        getEmailGateWay().sendEmailMessage(contract.getAdministratorEmailAddress(),
                "RE: Contract #" + contractNumber,
                contract + " has has revenue recognitions calculated.");
        getIntegrationGateWay().publishRevenueRecognitioCalculation(contract);
    }
    public Money recognisedRevenue(long contractNumber, LocalDate asOf) {
        return Contract.read(contractNumber).recognisedRevenue(asOf); // I would have this DB 'read' method in a data gateway somehow
    }
}
