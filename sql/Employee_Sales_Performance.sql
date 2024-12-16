--Rank employees by the total revenue of the orders they managed
select o.EmployeeID, e.FirstName, e.LastName, sum(od.Quantity*Price) as TotalRevenue, 
rank () over (order by sum(od.Quantity*Price) desc) as Emprank
from[dbo].[Orders] o
join Employees e on e.EmployeeID = o.EmployeeID
join OrderDetails od on od.OrderID = o.OrderID
join Products p on p.ProductID = od.ProductID
group by o.EmployeeID, e.FirstName, e.LastName