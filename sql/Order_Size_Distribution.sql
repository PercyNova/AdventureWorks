--Classify orders into Small (< 5 items), Medium (5–10 items), and Large (> 10 items) based on the total number of products
select OrderID, Quantity, 
CASE
	WHEN Quantity < 5 then 'Small'
	WHEN Quantity Between 5 and 10 then 'meduim'
	else 'Large'
	end as OrderSize
from OrderDetails
