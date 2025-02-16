select
	EngagementID,
	ContentID,
	CampaignID,
	ProductID,
	UPPER(Replace(ContentType, 'Socialmedia', 'Social Media')) as ContentType,
	convert(int, left(ViewsClicksCombined, CHARINDEX('-', ViewsClicksCombined) - 1)) as Views,
	convert(int, right(ViewsClicksCombined, len(ViewsClicksCombined) - CHARINDEX('-', ViewsClicksCombined))) as Clicks,
	Likes,
	format(convert(DATE, EngagementDate), 'dd-MM-yyyy') as EngagementDate
from dbo.engagement_data 
where contenttype != 'newsletter' order by views desc