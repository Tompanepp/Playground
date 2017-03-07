
class RevenueRecognition: TableModule {

    public RevenueRecognition(Dataset ds): base(ds, "RevenueRecognition"){}
    public long Insert(long contractID, decimal amount, DateTime date) {
        DateRow newRow = table.NewRow();
        long id = GetNextId();
        newRow["ID"] = id;
        newRow["contractID"] = contractID;
        newRow["amount"]= amount;
        newRow["date"] = string.Format("{0:s}", date);
        table.Rows.Add(newRow);
    }

    public Decimal RecognisedRevenue (long contractID, DateTime asOf) {
        String filter = string.Format("ContractID= {0} AND date <= #{1:d}#", contractID, asOf);
        DataRow[] rows = table.Select(filter);
        Decimal result = 0m;
        foreach (DataRow row in rows) {
            result += (Decimal) row["amount"];
        }
        return result;
    }
}
