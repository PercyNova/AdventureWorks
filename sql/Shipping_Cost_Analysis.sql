--Average revenue per shipment for each shipper
select s.ShipperName, avg(od.Quantity*p.Price) as AverageRevPerShipment
from Shippers s
join Orders o on o.ShipperID = s.ShipperID
join OrderDetails od on od.OrderID = o.OrderID
join Products p on p.ProductID = od.ProductID
group by s.ShipperName
