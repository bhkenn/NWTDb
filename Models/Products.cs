namespace NWTDb.Models
{
    public class Products
    {
        public int ProductID { get; set; }
        public string ProductCode { get; set; }
        public string ProductName { get; set; }
        public string Description { get; set; }
        public int CategoryID { get; set; }
        public decimal StandardCost { get; set; }
        public decimal ListPrice { get; set; }
        public int RedorderLevel { get; set; }
        public int TargetLevel { get; set; }
        public bool Discounted { get; set; }
        public int SupplierID { get; set; }
        public int AvailableQty { get; set; }
        public bool Reordered { get; set; }
        public string prodimage { get; set; }
    }
}