package TransactionScript;

import java.sql.*;

/**
 * Created by Praise on 2017/02/15.
 */

//Ideally this Table Date GateWay(144) is per Table, but this example is simple enough to use one
public class Gateway {
    //Script 1: calculate revenue recognitions for a contract
    //Script 2: how much revenue on a contract has been recognised

    private Connection db;
    //Script 1 : The amount of revenue recognition due by a particular day

    public ResultSet findRecognitionsFor(long contractID, Date asof) throws SQLException {
        PreparedStatement stmt = db.prepareStatement(findRecognitionsSatement);
        stmt = db.prepareStatement(findRecognitionsSatement);
        stmt.setLong(1, contractID);
        stmt.setDate(2, asof.toSqlDate());
        ResultSet result = stmt.executeQuery();
        return result;
    }

    private static final String findRecognitionsSatement =
            "SELECT amount " +
                    "FROM revenueRecognitions " +
                    "WHERE contract = ? AND rrecognizedOn <= ?";

}
