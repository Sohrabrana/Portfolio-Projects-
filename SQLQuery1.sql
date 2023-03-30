WITH hotels as (
SELECT *
FROM dbo.[2018]
union
SELECT *
FROM dbo.[2019]
union
SELECT *
FROM dbo.[2020])

--SELECT arrival_date_year , hotel,
--round( sum ((stays_in_week_nights + stays_in_weekend_nights)*adr),2) as revenue
--FROM hotels
--group by arrival_date_year,hotel

SELECT *
FROM hotels
left join dbo.market_segment
on hotels.market_segment = market_segment.market_segment
left join dbo.meal_cost
on meal_cost.meal = hotels.meal