--Identify the suppliers whose products generated the most revenue.
select s.SupplierName, p.ProductName, sum(p.Price*od.Quantity) as Revenue,
rank() over (partition by s.SupplierName order by  sum(p.Price*od.Quantity) Desc) as RankInProduct
from Suppliers s
join Orders o on o.ShipperID = s.SupplierID
join OrderDetails od on od.OrderID = o.OrderID
join Products p on p.ProductID = od.ProductID
group by s.SupplierName, p.ProductName
