//Sits on top of the database
class PersonGateawy {
    public IDataReader findAll() {
        string sql = "select * from  person";
        return new OleDbCommand(sql, DB.Connection).ExecuteReader();
    }
    public IDataReader findWihtLastName(String lastname) {
        string sql = "select * from person where lastname =?";
        IDbCommand comm = new OleDbCommand(sql, DB.Connection);
        comm.Parameters.Add(new OleDbParameter("lastname", lastname));
        return comm.ExecuteReader();
    }
    public IDataReader findWhere(String whereClause) {
        string sql = string.Format("select * from  person where {0}", whereClause);
        return new OleDbCommand(sql, DB.Connection).ExecuteReader();
    }

    public object[] findRow(long key) {
        string sql= "select * from person where id = ?";
        IDbCommand comm = new OleDbCommand(sql, DB.Connection);
        comm.Parameters.Add(new OleDbParameter("key", key));
        IDataReader reader = comm.ExecuteReader();
        reader.Read();
        object[] result = new object[reader.fieldCount];
        reader.GetValues(result);
        reader.Close();
        return result;
    }
    
    public void update(long key, string lastname, string firstName, long numberOfDependents) {
        string sql = @"
            UPDATE person
            SET lastname= ?, firstName = ?, numberOfDependents = ?
            WHERE id = ?";
        
        IDbCommand comm = new OleDbCommand(sql, DB.Connection);
        comm.Parameters.Add(new OleDbParameter ("last", lastname));
        comm.Parameters.Add(new OleDbParameter ("first", firstName));
        comm.Parameters.Add(new OleDbParameter ("numDep", numberOfDependents));
        comm.Parameters.Add(new OleDbParameter ("key", key));
        comm.ExecuteNonQuery();
    }
    public long insert(string lastname, string firstName, long numberOfDependents) {
        string sql = "INSERT INTO person VALUES(?,?,?,?)";
        long key  = GetNextID();
        IDbCommand comm = new OleDbCommand(sql, DB.Connection);
        comm.Parameters.Add(new OleDbParameter ("last", lastname));
        comm.Parameters.Add(new OleDbParameter ("first", firstName));
        comm.Parameters.Add(new OleDbParameter ("numDep", numberOfDependents));
        comm.Parameters.Add(new OleDbParameter ("key", key));
        comm.ExecuteNonQuery();
        return key;
    }
}