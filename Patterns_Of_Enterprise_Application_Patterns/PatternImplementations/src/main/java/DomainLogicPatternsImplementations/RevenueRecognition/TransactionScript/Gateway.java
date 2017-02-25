package DomainLogicPatternsImplementations.RevenueRecognition.TransactionScript;

import DomainLogicPatternsImplementations.RevenueRecognition.commonImplementations.DatabaseConnectionFactory;
import DomainLogicPatternsImplementations.RevenueRecognition.commonImplementations.Money;
import org.joda.time.LocalDate;

import java.sql.*;

/**
 * Created by Praise on 2017/02/15.
 */

//Ideally this Table Date GateWay(144) is per Table, but this example is simple enough to use one
public class Gateway {
    private static final String insertRecognitionStatement =
            "INSERT INTO revenueRecognitions VALUES (?, ?, ?)";
    private static final String findContractStatement =
            "SELECT ID ,product, revenue, dateSigned " +
                    "FROM contracts" +
                    "WHERE ID = ?";

    //Script 1 : The amount of revenue recognition due by a particular day
    private static final String findRecognitionsStatement =
            "SELECT amount " +
                    "FROM revenueRecognitions " +
                    "WHERE contract = ? AND recognizedOn <= ?";
    //Script 1: calculate revenue recognitions for a contract
    //Script 2: how much revenue on a contract has been recognised
    private Connection databasConnection;

    public Gateway(DatabaseConnectionFactory databaseConnectionFactory) {
        databasConnection = databaseConnectionFactory.connectToDatabase();
    }

    public ResultSet findRecognitionsFor(long contractID, LocalDate asof) throws SQLException {
        PreparedStatement stmt = databasConnection.prepareStatement(findRecognitionsStatement);
        stmt = databasConnection.prepareStatement(findRecognitionsStatement);
        stmt.setLong(1, contractID);
        stmt.setDate(2, (Date) asof.toDate());
        ResultSet result = stmt.executeQuery();
        return result;
    }

    public ResultSet findContract(long contractID) throws SQLException {
        PreparedStatement stmt = databasConnection.prepareStatement(findContractStatement);
        stmt = databasConnection.prepareStatement(findContractStatement);
        stmt.setLong(1, contractID);
        ResultSet result = stmt.executeQuery();
        return result;
    }

    public void insertRecognition(long contractID, Money amount, LocalDate asof) throws SQLException {
        PreparedStatement stmt = databasConnection.prepareStatement(insertRecognitionStatement);
    }

}
