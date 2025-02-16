with DuplicatesRecords as (
	select 
		JourneyID,
		CustomerID,
		ProductID,
		VisitDate,
		Stage,
		Action,
		Duration,
		ROW_NUMBER() over ( 
			partition by customerid, productid, visitdate, stage, action 
			order by journeyid
		)as row_num
	from dbo.customer_journey
)

select * from DuplicatesRecords where row_num != 1