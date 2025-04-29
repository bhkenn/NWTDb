using Microsoft.Data.SqlClient;
using NWTDb.Models;
using System.Data;

namespace NWTDb.Data
{
    public class ShoppingCartRepository : IShoppingCartRepository
    {
        private readonly string connectionString;
        public ShoppingCartRepository(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("DefaultConnection");
        }
        public void AddToCart(string cartID, int prodID)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("spShoppingCartAdditem", connection);
                cmd.Parameters.AddWithValue("@cartid", cartID);
                cmd.Parameters.AddWithValue("prodid", prodID);
                cmd.CommandType = CommandType.StoredProcedure;

                connection.Open();
                cmd.ExecuteNonQuery();
            }

        }
        public List<ShoppingCart> LoadCartItems(string cartID, out decimal total)
        {
            List<ShoppingCart> cartItems = new List<ShoppingCart>();
            using (var connection = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("spShoppingCartGetItems", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@cartID", cartID);

                connection.Open();
                using (var reader = cmd.ExecuteReader())
                {

                    while (reader.Read())
                    {
                        cartItems.Add(new ShoppingCart
                        {
                            CartID = reader.GetString(0),
                            ProductID = reader.GetInt32(1),
                            ProductName = reader.GetString(2),
                            StandardCost = reader.GetDecimal(3),
                            QuantityToOrder = reader.GetInt32(4),
                            Subtotal = reader.GetDecimal(5)
                        });
                    }
                }
                using (cmd = new SqlCommand("spShoppingCartGetTotalAmount", connection))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@cartID", cartID);


                    total = Convert.ToDecimal(cmd.ExecuteScalar());
                }
            }
            return cartItems;
        }

        void IShoppingCartRepository.UpdateCartItem(string cartID, int prodID, int qty)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("spShoppingCartUpdateItem", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@cartID", cartID);
                cmd.Parameters.AddWithValue("@prodID", prodID);
                cmd.Parameters.AddWithValue("@qty", qty);

                connection.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}
