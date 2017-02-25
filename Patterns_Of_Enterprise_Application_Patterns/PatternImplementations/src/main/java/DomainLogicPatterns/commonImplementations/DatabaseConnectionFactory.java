package DomainLogicPatterns.commonImplementations;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Created by Praise on 2017/02/21.
 */
//Mutation happening in here
public class DatabaseConnectionFactory {
    public Connection connectToDatabase() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            //API:DATABASE(DBMS):SERVER:PORT:DATABASENAME
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sonoo", "root", "root");
            return connection;
        } catch (Exception e) {
            System.out.println(e);
        }
        return connection;
    }
}
