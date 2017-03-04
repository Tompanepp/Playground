//this is the Contract table module

class Contract: TableModule {
    public Contract(DataSet ds): base(ds, "Contracts"){}
    
    public DataRow this[long key] {
        get {
            string filter = string.Format("ID = {0}", key);
            return table.Select(filter)[0];
        }
    }

    public void CalculateRecognitions (long contracID) {
        DataRow contractRow = this[contracID];
        decimal amount = (decimal) contractRow["amount"];
        RevenueRecognition rr = new RevenueRecognition(table.DataSet);
        Product prod = new Product(table.DataSet);
        long prodId = GetProductType(prodId);

        if(prod.GetProductType(prodId) == ProductType.WP) {
            rr.Insert(contracID, amount, (DateTime) GetWhenSinged(contracID));
        }
        else if(prod.GetProductType(prodId) == ProductType.SS) {
            decimal[] allocation = allocate(amount, 3);
            rr.Insert(contracID, allocation[0], (DateTime) GetWhenSinged(contracID));
            rr.Insert(contracID, allocation[1], (DateTime) GetWhenSinged(contracID).addDays(60));
            rr.Insert(contracID, allocation[2], (DateTime) GetWhenSinged(contracID).addDays(90));
        }
        else if(prod.GetProductType(prodId) == ProductType.DB){
            decimal[] allocation = allocate(amount, 3);
            rr.Insert(contracID, allocation[0], (DateTime) GetWhenSinged(contracID));
            rr.Insert(contracID, allocation[1], (DateTime) GetWhenSinged(contracID).addDays(30));
            rr.Insert(contracID, allocation[2], (DateTime) GetWhenSinged(contracID).addDays(60));
        }
        else throw new Exception("invalid product id");
    }

    private decimal[] allocate(decimal amount, int by) {
        decimal [] allocation = new decimal[by];

        /*
            My initial implementation
        decimal lowresult = amount/by;
        decimal highresult = lowresult + 1;* */
        
        decimal lowresult = amount/by;
        lowresult = Decimal.round(lowresult, 2);
        decimal highresult = lowresult + 0.01m;
        int remainder = (int)(amount % by);
        for(int i = 0; i < remainder; i++) {
            allocation[i] = lowresult;
        }
        for(int i = remainder; i < by; i++) {
            allocation[i] = highresult;
        }
        return allocation;
    }
}