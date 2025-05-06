using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.CodeAnalysis;
using NWTDb.Data;
using NWTDb.Models;

namespace NWTDb.Pages.Admin
{
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
        public IActionResult OnPost(int prodID, string cartID)
        {
            if (ModelState.IsValid)
            {
                if (cartID == "0")
                {
                    productRepository.DeleteProduct(prodID);
                }
                else
                {
                    shoppingCartRepository.AddToCart(cartID, prodID);
                }
                return RedirectToPage("/Product/ShoppingCart");
            }
            return Page();
        }
    }
}
