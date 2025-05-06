using Microsoft.Data.SqlClient;
using NWTDb.Models;
using System.Data;

namespace NWTDb.Data
{
    public class OrderRepository : IOrderRepository
    {
        private readonly string connectionString;
        public OrderRepository(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("DefaultConnection");
        }
        public int PlaceOrder(string cartID)
        { 
            using (var connection = new SqlConnection(connectionString))
            {
                var command = new SqlCommand("spCreateCustomerOrder", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@cartID", cartID);

                var outputIdParam = new SqlParameter("@newOrderID", SqlDbType.Int) { Direction = ParameterDirection.Output };
                command.Parameters.Add(outputIdParam);
                
                connection.Open();
                command.ExecuteNonQuery();

                return (int)outputIdParam.Value;
            }
        }
    }
}
