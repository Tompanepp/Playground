package TransactionScript;

import org.omg.CORBA.portable.ApplicationException;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Praise on 2017/02/15.
 */
public class RevenueRecognitionService {
        private Gateway db;

        public Money recognizedRevenue(long contractNumber, MFDate asOf) {
            Money result = Money.dollars(new BigDecimal(0));
            try{
                ResultSet rs = db.findRecognitionsFor(contractNumber, asOf);
                while(rs.next()){
                    result = result.add(Money.dollars(rs.getBigDecimal("amount")));
                }
                return result;
            }
            catch (SQLException e){
                throw new Exception(e);
            }
        }
}
