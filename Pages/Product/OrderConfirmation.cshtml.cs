using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Data.SqlClient;
using NWTDb.Models;
using System.Data;

namespace NWTDb.Pages.Product
{
    [Authorize(Roles = "Employee, Administrator")]
    public class OrderConfirmationModel : PageModel
    {
        private readonly IConfiguration configuration;
        public OrderConfirmationModel(IConfiguration _configuration)
        {
            configuration = _configuration;
        }
        public int Order { get; set; }
        public List<OrderItemView> OrderItems { get; set; } = new();
        public decimal Total { get; set; }
        public int OrderID { get; set; }

        public void OnGet(int orderID)
        {
            OrderID = orderID;
            using (var connection = new SqlConnection(configuration.GetConnectionString("DefaultConnection")))
            {
                connection.Open();

                using (var command = new SqlCommand("spGetOrderItems", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@orderID", orderID);

                    using (var reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            var item = new OrderItemView
                            {
                                ProductName = reader["ProductName"].ToString(),
                                Quantity = Convert.ToInt32(reader["Quantity"]),
                                UnitPrice = Convert.ToDecimal(reader["UnitCost"])
                            };
                            OrderItems.Add(item);

                            Total += item.UnitPrice * item.Quantity;
                        }
                    }
                }
            }
        }
    }
}
