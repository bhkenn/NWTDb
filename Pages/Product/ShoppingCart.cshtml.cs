using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using NWTDb.Data;
using NWTDb.Models;

namespace NWTDb.Pages.Product
{
    [Authorize(Roles = "Employee, Administrator")]
    public class ShoppingCartModel : PageModel
    {
        private readonly IShoppingCartRepository _shoppingCartRepository;
        public decimal CartTotal { get; set; }
        [BindProperty]
        public List<ShoppingCart> CartItems { get; set; }
        public ShoppingCartModel(IShoppingCartRepository shoppingCartRepository)
        {
            _shoppingCartRepository = shoppingCartRepository;
        }
        public void OnGet()
        {
            string cartID = User.FindFirst(System.Security.Claims.ClaimTypes.NameIdentifier).Value;

            CartItems = _shoppingCartRepository.LoadCartItems(cartID, out decimal total);
            CartTotal = total;
        }
        public IActionResult OnPost()
        {
            if (ModelState.IsValid)
            {
                foreach (var item in CartItems)
                {
                    _shoppingCartRepository.UpdateCartItem(item.CartID, item.ProductID, item.QuantityToOrder);
                }
            }
            return Page();
        }
    }
}
