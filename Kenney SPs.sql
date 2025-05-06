create or alter proc spGetProductsByCategoryID
(@categoryID int)
as
	Select * from Products
	where CategoryID = @categoryID
go

create or alter proc spGetProductByID
(@prodID int)
as
	Select * from Products
	where ProductID = @prodID
go

create or alter proc spShoppingCartGetItems
(@cartID char(36))
as
	Select CartID, ProductID, ProductName, StandardCost, QuantityToOrder, (QuantityToOrder * StandardCost) as Subtotal from ShoppingCart
	where CartID = @cartID
go

create or alter proc spShoppingCartGetTotalAmount
(@cartID char(36))
as
	Select isNull(SUM(QuantityToOrder * StandardCost), 0) as Subtotal from ShoppingCart
	where CartID = @cartID
go

create or alter proc spShoppingCartRemoveItem
(@cartID char(36), @prodID int)
as
	Delete from ShoppingCart where CartID = @cartID and ProductID = @prodID
go

create or alter proc spShoppingCartUpdateItem
(@cartID char(36), @prodID int, @qty int)
as
	IF @qty <= 0
		exec spShoppingCartRemoveItem @cartID, @prodID
	
	ELSE
		Update ShoppingCart 
		Set QuantityToOrder = @qty
		where CartID = @cartID and ProductID = @prodID
go

create or alter proc spDeleteProduct
(@prodID int)
as
	Delete from Products
	where ProductID = @prodID
go

Create or alter proc spInsertProduct
(@ProductCode nvarchar(50), @ProductName nvarchar(100), @Description nvarchar(100), @CategoryID int, @StandardCost money, @ListPrice money, @ReorderLevel int, @TargetLevel int, @Discontinued bit, @SupplierID int, @AvailableQty int, @Reordered bit, @prodimage nvarchar(30))
as
	Insert into Products (ProductCode, ProductName, Description, CategoryID, StandardCost, ListPrice, ReorderLevel, TargetLevel, Discontinued, SupplierID, AvailableQty, Reordered, prodimage)
	Values (@ProductCode, @ProductName, @Description, @CategoryID, @StandardCost, @ListPrice, @ReorderLevel, @TargetLevel, @Discontinued, @SupplierID, @AvailableQty, @Reordered, @prodimage)
go

create or alter proc spCreateCustomerOrder
(@cartID char(36), @newOrderID int out)
as
	Begin Transaction
	Insert into PurchaseOrders (EmpID) Values (@cartID) 

	set @newOrderID = SCOPE_IDENTITY()

	insert into PurchaseOrderDetails(PurchaseOrderID, ProductID, ProductName, Quantity, UnitCost) 
	Select @newOrderID, ProductID, ProductName, QuantityToOrder, StandardCost from ShoppingCart
	where CartID = @cartID

	Delete from ShoppingCart where cartID = @cartID

	if XACT_STATE() = 1
		COMMIT TRANSACTION
	else
		ROLLBACK TRANSACTION
go

create or alter proc spGetOrderItems
(@orderID int)
as
	Select ProductName, Quantity, UnitCost
	from PurchaseOrderDetails
	where PurchaseOrderID = @orderID
go