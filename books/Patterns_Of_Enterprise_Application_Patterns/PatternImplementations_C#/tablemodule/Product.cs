
class Product: TableModule {

    public Product(DataSet ds): base(ds, "Product"){}

    public ProductType GetProductType(long id) {
        String typeCode = (String) this[id]["type"];
        return (ProductType) Enum.Parse(typeof(ProductType), typeCode);
    }
}

