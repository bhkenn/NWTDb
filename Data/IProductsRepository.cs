using NWTDb.Models;

namespace NWTDb.Data
{
    public interface IProductsRepository
    {
        List<Products> GetProductsByCategory(int catID);

        Products GetProductByID(int id);

        void DeleteProduct(int prodID);

        void CreateProduct(Products product);
    }
}
