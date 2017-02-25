package DomainLogicPatterns.TransactionScript;

import DomainLogicPatterns.commonImplementations.Money;
import org.joda.time.LocalDate;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.SQLException;

import static DomainLogicPatterns.commonImplementations.ProudctType.*;


/**
 * Created by Praise on 2017/02/15.
 */
public class RevenueRecognitionService {
    private Gateway databaseGateWay;

    public RevenueRecognitionService(Gateway recognitionTableGateWay) {
        this.databaseGateWay = recognitionTableGateWay;
    }

    //Sum up recognitions
    public Money recognizedRevenue(long contractNumber, LocalDate asOf) {
        Money result = Money.dollars(new BigDecimal(0));
        try {
            ResultSet rs = databaseGateWay.findRecognitionsFor(contractNumber, asOf);
            while (rs.next()) {
                result = result.add(Money.dollars(rs.getBigDecimal("amount")));
            }
            return result;
        } catch (SQLException e) {
            System.out.println(String.format("An error occured communicating with the database: %s", e.getMessage()));
        }
        return result;
    }

    //S = Spreadsheet
    //D = Database
    //W = Word processor

    //This is the transaction script
    // One long routine that has the logic for a transaction (i.e. Recognition of revenue)
    public void calculateRevenueRecognitions(long contractNumber) {
        try {
            ResultSet contracts = databaseGateWay.findContract(contractNumber);
            contracts.next();
            Money totalRevenue = Money.dollars(contracts.getBigDecimal("revenue"));
            LocalDate recoginitionDate = new LocalDate(contracts.getDate("dateSinged").toString()); // Hack to instantiate joda date
            String type = contracts.getString("type");

            if (type.equals(Database)) {
                Money[] allocation = totalRevenue.allocate(3);
                databaseGateWay.insertRecognition(contractNumber, allocation[0], recoginitionDate);
                databaseGateWay.insertRecognition(contractNumber, allocation[1], recoginitionDate.plusDays(60));
                databaseGateWay.insertRecognition(contractNumber, allocation[2], recoginitionDate.plusDays(90));
            } else if (type.equals(WordProcessor)) {
                databaseGateWay.insertRecognition(contractNumber, totalRevenue, recoginitionDate);
            } else if (type.equals(Spreadsheet)) {
                Money[] allocation = totalRevenue.allocate(3);
                databaseGateWay.insertRecognition(contractNumber, allocation[0], recoginitionDate);
                databaseGateWay.insertRecognition(contractNumber, allocation[1], recoginitionDate.plusDays(30));
                databaseGateWay.insertRecognition(contractNumber, allocation[1], recoginitionDate.plusDays(60));
            }
        } catch (SQLException e) {
            System.out.println(String.format("An error occured communicating with the database: %s", e.getMessage()));
        }
    }
}
