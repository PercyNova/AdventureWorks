--For each supplier, count the number of distinct categories they provide products for
select DISTINCT s.SupplierName, count(c.CategoryID) as CategoryCount
from Products p
join Suppliers s on s.SupplierID = p.SupplierID
join Categories c on c.CategoryID = p.CategoryID
group by s.SupplierName
