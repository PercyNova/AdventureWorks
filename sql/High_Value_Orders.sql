--all orders where the total value exceeds $5,000.
SELECT c.CustomerName, sum(od.Quantity) as TotalQuantity, sum(od.Quantity*Price) as TotalRevenue
from Customers c
join Orders o on o.CustomerID = c.CustomerID
join OrderDetails od on od.OrderID = o.OrderID
join Products p on p.ProductID = od.ProductID
group by c.CustomerName
having sum(od.Quantity*Price) > 5000
