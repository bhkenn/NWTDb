using Microsoft.Data.SqlClient;
using NWTDb.Models;
using System.Data;

namespace NWTDb.Data
{
    public class ProductsRepository : IProductsRepository
    {
        private readonly string connectionString;
        public ProductsRepository(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("DefaultConnection");
        }
        public List<Products> GetProductsByCategory(int catID)
        {
            var products = new List<Products>();

            using (var connection = new SqlConnection(connectionString))
            {
                using (var cmd = new SqlCommand("spGetProductsByCategoryID", connection))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@CategoryID", catID);

                    connection.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            products.Add(new Products
                            {
                                ProductID = reader.GetInt32(0),
                                ProductCode = reader.GetString(1),
                                ProductName = reader.GetString(2),
                                Description = reader.GetString(3),
                                CategoryID = reader.GetInt32(4),
                                StandardCost = reader.GetDecimal(5),
                                ListPrice = reader.GetDecimal(6),
                                RedorderLevel = reader.GetInt32(7),
                                TargetLevel = reader.GetInt32(8),
                                Discounted = reader.GetBoolean(9),
                                SupplierID = reader.GetInt32(10),
                                AvailableQty = reader.GetInt32(11),
                                Reordered = reader.GetBoolean(12),
                                prodimage = reader.GetString(13)
                            });
                        }
                    }
                }
            }
            return products;
        }
        public Products GetProductByID(int id)
        {
            Products retrievedProduct = null;
            using (var connection = new SqlConnection(connectionString))
            {
                var cmd = new SqlCommand("spGetProductByID", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prodID", id);

                connection.Open();
                using (var reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        retrievedProduct = new Products()
                        {
                            ProductID = reader.GetInt32(0),
                            ProductCode = reader.GetString(1),
                            ProductName = reader.GetString(2),
                            Description = reader.GetString(3),
                            CategoryID = reader.GetInt32(4),
                            StandardCost = reader.GetDecimal(5),
                            ListPrice = reader.GetDecimal(6),
                            RedorderLevel = reader.GetInt32(7),
                            TargetLevel = reader.GetInt32(8),
                            Discounted = reader.GetBoolean(9),
                            SupplierID = reader.GetInt32(10),
                            AvailableQty = reader.GetInt32(11),
                            Reordered = reader.GetBoolean(12),
                            prodimage = reader.GetString(13)
                        };
                    }
                }
            }
            return retrievedProduct;
        }
    }
}