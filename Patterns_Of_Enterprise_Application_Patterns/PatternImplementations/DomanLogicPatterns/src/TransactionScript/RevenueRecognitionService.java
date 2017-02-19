package TransactionScript;

import commonImplementations.Money;

import java.math.BigDecimal;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Praise on 2017/02/15.
 */
public class RevenueRecognitionService {
    private Gateway db;

    public RevenueRecognitionService(Gateway recognitionTableGateWay) {
        this.db = recognitionTableGateWay;
    }

    //Sum up recognitions
    public Money recognizedRevenue(long contractNumber, Date asOf) {
        Money result = Money.dollars(new BigDecimal(0));
        try {
            ResultSet rs = db.findRecognitionsFor(contractNumber, asOf);
            while (rs.next()) {
                result = result.add(Money.dollars (rs.getBigDecimal("amount")));
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

    public void calculateRevenueRecognitions(long contractNumber) {
        try {
            ResultSet contracts = db.findContract(contractNumber);
            contracts.next();
            Money totalRevenue  = Money.dollars(contracts.getBigDecimal("revenue"));
            Date recoginitionDate = contracts.getDate("dateSinged");
            String contractType = contracts.getString("type");

            if(contractType.equals("S")){
                Money [] allocation = totalRevenue.allocate(3);
            }


        } catch (SQLException e) {
            System.out.println(String.format("An error occured communicating with the database: %s", e.getMessage()));
        }
    }
}


