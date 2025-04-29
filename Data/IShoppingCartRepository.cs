using NWTDb.Models;

namespace NWTDb.Data
{
    public interface IShoppingCartRepository
    {
        void AddToCart(string cartID, int prodID);

        public List<ShoppingCart> LoadCartItems(string cartID, out decimal total);

        void UpdateCartItem(string cartID, int prodID, int qty);
    }
}
