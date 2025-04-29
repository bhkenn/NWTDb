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
                                ReorderLevel = reader.GetInt32(7),
                                TargetLevel = reader.GetInt32(8),
                                Discontinued = reader.GetBoolean(9),
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
                            ReorderLevel = reader.GetInt32(7),
                            TargetLevel = reader.GetInt32(8),
                            Discontinued = reader.GetBoolean(9),
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

        public void DeleteProduct(int prodID)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                var cmd = new SqlCommand("spDeleteProduct", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prodID", prodID);

                connection.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public void CreateProduct(Products product)
        {
            var parameters = new SqlParameter[]
            {
                new SqlParameter("@ProductCode", SqlDbType.NVarChar) { Value = product.ProductCode },
                new SqlParameter("@ProductName", SqlDbType.NVarChar) { Value = product.ProductName },
                new SqlParameter("@Description", SqlDbType.NVarChar) { Value = product.Description },
                new SqlParameter("@CategoryID", SqlDbType.Int) { Value = product.CategoryID },
                new SqlParameter("@StandardCost", SqlDbType.Money) { Value = product.StandardCost },
                new SqlParameter("@ListPrice", SqlDbType.Money) { Value = product.ListPrice },
                new SqlParameter("@ReorderLevel", SqlDbType.Int) { Value = product.ReorderLevel },
                new SqlParameter("@TargetLevel", SqlDbType.Int) { Value = product.TargetLevel },
                new SqlParameter("@Discontinued", SqlDbType.Bit) { Value = product.Discontinued },
                new SqlParameter("@SupplierID", SqlDbType.Int) { Value = product.SupplierID },
                new SqlParameter("@AvailableQty", SqlDbType.Int) { Value = product.AvailableQty },
                new SqlParameter("@Reordered", SqlDbType.Int) { Value = product.Reordered },
                new SqlParameter("@prodimage", SqlDbType.NVarChar) { Value = product.prodimage }
            };

            using (var connection = new SqlConnection(connectionString))
            {
                using (var cmd = new SqlCommand("spInsertProduct", connection))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddRange(parameters);

                    connection.Open();
                    cmd.ExecuteScalar();
                }
            }
        }
    }
}