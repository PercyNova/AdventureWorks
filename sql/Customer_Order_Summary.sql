-- show the total number of orders and the total revenue generated from their purchases
SELECT c.CustomerName, sum(od.Quantity) as TotalQuantity, sum(od.Quantity*Price) as TotalRevenue
from Customers c
join Orders o on o.CustomerID = c.CustomerID
join OrderDetails od on od.OrderID = o.OrderID
join Products p on p.ProductID = od.ProductID
group by c.CustomerName

