--Assume a cost price for each product (70%). Calculate the profit for each order
select o.OrderID, (od.Quantity*p.Price) as Revenue, ((od.Quantity*p.Price)*0.7) as TotalCost, ((od.Quantity*p.Price)*0.3) as ProfitMargin
from OrderDetails od
join Orders o on o.OrderID = od.OrderID
join Products p on p.ProductID = od.ProductID
