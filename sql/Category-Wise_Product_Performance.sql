--For each category, display the average price of products and the total quantity sold.
select c.CategoryName, avg(p.Price) as AvgPrice, sum(Quantity) as TotalQuantitySold
from Categories c
join Products p on p.CategoryID = c.CategoryID
join OrderDetails od on od.ProductID = p.ProductID
group by c.CategoryName



