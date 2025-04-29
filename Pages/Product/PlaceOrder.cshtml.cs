using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using NWTDb.Data;
using NWTDb.Models;

namespace NWTDb.Pages.Product
{
    public class PlaceOrderModel : PageModel
    {
        private readonly IShoppingCartRepository shoppingCartRepository;
        public List<ShoppingCart> CartItems { get; set; }
        public decimal CartTotal { get; set; }
        public OrderInput OrderInput { get; set; }

        public PlaceOrderModel(IShoppingCartRepository _shoppingCartRepository)
        {
            shoppingCartRepository = _shoppingCartRepository;
        }
        public void OnGet()
        {
            string cartID = User.FindFirst(System.Security.Claims.ClaimTypes.NameIdentifier).Value;

            CartItems = shoppingCartRepository.LoadCartItems(cartID, out decimal total);
            CartTotal = total;
        }
    }
}
