--Determine the best-selling product (by quantity) in each country
SELECT 
    Country,
    ProductName,
    TotalQuantity
FROM (
    SELECT 
        c.Country,
        p.ProductName,
        SUM(od.Quantity) AS TotalQuantity,
        RANK() OVER (PARTITION BY c.Country ORDER BY SUM(od.Quantity) DESC) AS RankInCountry
    FROM 
        Customers c
    JOIN 
        Orders o ON o.CustomerID = c.CustomerID
    JOIN 
        OrderDetails od ON od.OrderID = o.OrderID
    JOIN 
        Products p ON p.ProductID = od.ProductID
    GROUP BY 
        c.Country, p.ProductName
) As RankedData
WHERE RankInCountry = 1;
