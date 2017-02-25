package DomainLogicPatternsImplementations.RevenueRecognition.TransactionScript;

import DomainLogicPatternsImplementations.RevenueRecognition.commonImplementations.Money;
import org.joda.time.LocalDate;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.SQLException;

import static DomainLogicPatternsImplementations.RevenueRecognition.commonImplementations.NumberOfRevenueRecognitions.Three;
import static DomainLogicPatternsImplementations.RevenueRecognition.commonImplementations.ProductType.*;


/**
 * Created by Praise on 2017/02/15.
 */

//Domain logic is primarily organised around TRANSACTIONS that you carry out with the system
    ///Everything you need to do to accomplish a specific transaction is organised in one Script
public class RevenueRecognitionService {
    private Gateway databaseGateWay;

    public RevenueRecognitionService(Gateway recognitionTableGateWay) {
        this.databaseGateWay = recognitionTableGateWay;
    }

    //Sum up recognitions
    //How much revenue has been recognized by a certain date
    //Script 1 (transaction 1)
    public Money recognizedRevenue(long contractNumber, LocalDate asOf) {
        Money result = Money.dollars(new BigDecimal(0));
        try {
            ResultSet rs = databaseGateWay.findRecognitionsFor(contractNumber, asOf);
            while (rs.next()) {
                result = result.add(Money.dollars(rs.getBigDecimal("amount")));
            }
            return result;
        } catch (SQLException e) {
            System.out.println(String.format("An error occurred communicating with the database: %s", e.getMessage()));
        }
        return result;
    }

    //S = Spreadsheet
    //D = Database
    //W = Word processor

    //Script 2 (transaction 2)
    //Determine when revenue will be recognised for a contract
    public void calculateRevenueRecognitions(long contractNumber) {
        try {
            ResultSet contract = databaseGateWay.findContract(contractNumber);
            contract.next();
            Money totalRevenue = Money.dollars(contract.getBigDecimal("revenue"));
            LocalDate recognitionDate = new LocalDate(contract.getDate("dateSinged").toString()); // Hack to instantiate joda date
            String type = contract.getString("type");

            if (type.equals(Spreadsheet.getValue())) {
                Money[] allocation = totalRevenue.allocate(Three.getNumValue());
                databaseGateWay.insertRecognition(contractNumber, allocation[0], recognitionDate);
                databaseGateWay.insertRecognition(contractNumber, allocation[1], recognitionDate.plusDays(60));
                databaseGateWay.insertRecognition(contractNumber, allocation[2], recognitionDate.plusDays(90));
            } else if (type.equals(WordProcessor.getValue())) {
                databaseGateWay.insertRecognition(contractNumber, totalRevenue, recognitionDate);
            } else if (type.equals(Database.getValue())) {
                Money[] allocation = totalRevenue.allocate(Three.getNumValue());
                databaseGateWay.insertRecognition(contractNumber, allocation[0], recognitionDate);
                databaseGateWay.insertRecognition(contractNumber, allocation[1], recognitionDate.plusDays(30));
                databaseGateWay.insertRecognition(contractNumber, allocation[1], recognitionDate.plusDays(60));
            }
        } catch (SQLException e) {
            System.out.println(String.format("An error occured communicating with the database: %s", e.getMessage()));
        }
    }
}
