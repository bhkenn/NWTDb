using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using NWTDb.Data;
using NWTDb.Models;

namespace NWTDb.Pages.Product
{
    [Authorize(Roles = "Employee, Administrator")]
    public class ProductDetailsModel : PageModel
    {
        private readonly IProductsRepository productRepository;
        private readonly IShoppingCartRepository shoppingCartRepository;
        public Products product { get; set; }
        public ProductDetailsModel(IProductsRepository _productRepository, IShoppingCartRepository _shoppingCartRepository)
        {
            productRepository = _productRepository;
            shoppingCartRepository = _shoppingCartRepository;

        }
        public void OnGet(int id)
        {
            product = productRepository.GetProductByID(id);
        }
        public IActionResult OnPost(int productID, string cartID)
        {
            if (ModelState.IsValid)
            {
                shoppingCartRepository.AddToCart(cartID, productID);
                return RedirectToPage("ShoppingCart");
            }
            return Page();
        }
    }
}
