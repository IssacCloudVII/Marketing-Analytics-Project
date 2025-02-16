select
	cust.CustomerName,
	cust.Email,
	cust.Gender,
	cust.Age,
	geo.Country,
	geo.City
from dbo.customers cust
left join 
dbo.geography as geo
on cust.GeographyID = geo.GeographyID order by geo.country;