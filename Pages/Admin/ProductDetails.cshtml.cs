using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using NWTDb.Data;
using NWTDb.Models;

namespace NWTDb.Pages.Admin
{
    [Authorize(Roles = "Administrator")]
    public class ProductDetailsModel : PageModel
    {
        private readonly IProductsRepository _productRepository;
        private readonly IShoppingCartRepository _shoppingCartRepository;
        public Products product { get; set; }
        public ProductDetailsModel(IProductsRepository productRepository, IShoppingCartRepository shoppingCartRepository)
        {
            _productRepository = productRepository;
            _shoppingCartRepository = shoppingCartRepository;

        }
        public void OnGet(int id)
        {
            product = _productRepository.GetProductByID(id);
        }
        public IActionResult OnPost(int prodID)
        {
            if (ModelState.IsValid)
            {
                _productRepository.DeleteProduct(prodID);
                return RedirectToPage("Index");
            }
            return Page();
        }
    }
}
