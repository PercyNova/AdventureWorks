--Customers who havent placed any order in the last 6 months
select c.CustomerName, o.OrderDate
from Customers c
join Orders o on o.CustomerID = c.CustomerID
join OrderDetails od on od.OrderID = o.OrderID
where o.OrderDate < DATEADD(Month, -6, '1997-02-01')
