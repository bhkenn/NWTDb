using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using NWTDb.Data;
using NWTDb.Models;

namespace NWTDb.Pages.Product
{
    public class ProductDetailsModel : PageModel
    {
        private readonly IProductsRepository _productRepository;
        public Products product { get; set; }
        public ProductDetailsModel(IProductsRepository productRepository)
        {
            _productRepository = productRepository;
        }
        public void OnGet(int id)
        {
            product = _productRepository.GetProductByID(id);
        }
        public IActionResult OnPost()
        {
            throw new NotImplementedException();
        }
    }
}
