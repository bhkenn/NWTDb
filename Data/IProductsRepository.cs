using NWTDb.Models;

namespace NWTDb.Data
{
    public interface IProductsRepository
    {
        List<Products> GetProductsByCategory(int catID);

        Products GetProductByID(int id);
    }
}
