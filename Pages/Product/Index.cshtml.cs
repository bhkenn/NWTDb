using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using NWTDb.Models;
using NWTDb.Data;

namespace NWTDb.Pages.Product
{
    public class IndexModel : PageModel
    {
        private readonly IProductsRepository _productsRepository;
        public List<Products> ProdList { get; set; }
        public IndexModel(IProductsRepository productsRepository)
        {
            _productsRepository = productsRepository;
        }
        public void OnGet(int id)
        {
            ProdList = _productsRepository.GetProductsByCategory(id);
        }
    }
}
