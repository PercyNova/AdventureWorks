--Identify customers who have placed more than 10 orders.
SELECT c.CustomerName, count(o.OrderID) as TotalOrders
from Customers c
join Orders o on o.CustomerID = c.CustomerID
join OrderDetails od on od.OrderID = o.OrderID
join Products p on p.ProductID = od.ProductID
group by c.CustomerName
having count(o.OrderID)> 10;