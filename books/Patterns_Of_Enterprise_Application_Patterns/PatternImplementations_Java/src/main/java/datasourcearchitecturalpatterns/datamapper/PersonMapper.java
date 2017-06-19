package datasourcearchitecturalpatterns.datamapper;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by Praise on 2017/03/11.
 */
public class PersonMapper extends AbstractMapper {
    public static final String COLUMNS = "id, lastname, firstname, number_of_dependents ";
    private static final String updateStatementString =
            "UPDATE people " +
                    " SET lastname = ?, firstname = ?, number_of_dependents = ?" +
                    " WHERE id = ?";
    private static String findLastNameStatement = "SELECT " + COLUMNS + "FROM people " + "WHERE UPPER(lastname) like " +
            "UPPER(?) ORDER BY lastname";

    protected String findStatement() {
        return "SELECT " + COLUMNS + " FROM people" + " WHERE id = ?";
    }

    public List findByLastName(String name) {
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            stmt = DB.prepare(findLastNameStatement);
            stmt.setString(1, name);
            rs = stmt.executeQuery();
            return loadAll(rs);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            DB.cleanUp(stmt, rs);
        }
    }

    public Person find(Long id) {
        return (Person) abstractFind(id);
    }

    public Person find(long id) {
        return find(new Long(id));
    }

    protected DomainObject doLoad(Long id, ResultSet rs) throws SQLException {
        String lastNameArg = rs.getString(2);
        String firstNameArg = rs.getString(3);
        int numDependentArg = rs.getInt(4);
        return new Person(id, lastNameArg, firstNameArg, numDependentArg);
    }

    public List findByLastName2(String pattern) {
        return findMany(new FindByLastName(pattern));
    }

    public void update(Person subject) {
        PreparedStatement updateStatement = null;
        try {
            updateStatement = DB.prepare(updateStatement);
            updateStatement.setString(1, subject.getLastName());
            updateStatement.setString(1, subject.getFirstName());
            updateStatement.setInt(1, subject.getNumberOfDependents());
            updateStatement.setInt(1, subject.getId().intValue());
            updateStatement.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            DB.cleanUp(updateStatement);
        }
    }

    static class FindByLastName implements StatementSource {
        private String lastName;

        public FindByLastName(String lastName) {
            this.lastName = lastName;
        }

        public String sql() {
            return
                    "SELECT " + COLUMNS +
                            " FROM people " +
                            " WHERE UPPER(lastname) like UPPER(?)" +
                            " ORDER BY lastname";
        }

        public Object[] parameters() {
            Object[] result = {lastName};
            return result;
        }
    }

    protected void doInsert(DomainObject abstractSubject,
                            PreparedStatement stmt) throws SQLException {
        Person subject = (Person) abstractSubject;
        stmt.setString(2, subject.getLastName());
        stmt.setString(3, subject.getFirstName());
        stmt.setInt(4, subject.getNumberOfDependents());
    }
}
