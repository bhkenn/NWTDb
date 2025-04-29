using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using NWTDb.Data;
using NWTDb.Models;

namespace NWTDb.Pages.Admin
{
    [Authorize(Roles = "Administrator")]
    public class CreateProductModel : PageModel
    {
        private readonly IProductsRepository _productRepository;
        [BindProperty]
        public Products product { get; set; }
        public CreateProductModel(IProductsRepository productRepository)
        {
            _productRepository = productRepository;
        }
        public void OnGet()
        {
        }
        public IActionResult OnPost()
        {
            _productRepository.CreateProduct(product);
            return RedirectToPage("Index");
        }
    }
}
