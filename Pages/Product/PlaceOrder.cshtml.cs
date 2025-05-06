using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using NWTDb.Data;
using NWTDb.Models;

namespace NWTDb.Pages.Product
{
    [Authorize(Roles = "Employee, Administrator")]
    public class PlaceOrderModel : PageModel
    {
        private readonly IShoppingCartRepository shoppingCartRepository;
        private readonly IOrderRepository orderRepository;
        public List<ShoppingCart> CartItems { get; set; }
        public decimal CartTotal { get; set; }
        public OrderInput OrderInput { get; set; }

        public PlaceOrderModel(IShoppingCartRepository _shoppingCartRepository, IOrderRepository _orderRepository)
        {
            shoppingCartRepository = _shoppingCartRepository;
            orderRepository = _orderRepository;
        }
        public IActionResult OnGet()
        {
            string cartID = User.FindFirst(System.Security.Claims.ClaimTypes.NameIdentifier).Value;

            CartItems = shoppingCartRepository.LoadCartItems(cartID, out decimal total);
            CartTotal = total;

            if (CartTotal == 0)
            {
                return RedirectToPage("ShoppingCart");
            }
            else
            {
                return Page();
            }
        }
        public IActionResult OnPost()
        {
            string userID = User.FindFirst(System.Security.Claims.ClaimTypes.NameIdentifier).Value;
            if (!ModelState.IsValid)
            {
                return Page();
            }
            int orderID = orderRepository.PlaceOrder(userID);

            return RedirectToPage("OrderConfirmation", new { orderID });
        }
    }
}
