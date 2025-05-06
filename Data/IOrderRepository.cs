namespace NWTDb.Data
{
    public interface IOrderRepository
    {
        int PlaceOrder(string cartID);
    }
}
