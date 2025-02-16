select
	ProductID,
	ProductName,
	Price,
	case 
		when price < 50 then 'Low'
		when price between 50 and 200 then 'Medium'
		else 'High'
	end as PriceCategory
from dbo.products order by price