use PAI_CA1

-- Complex Query 1

SELECT
    d.car_brand AS Car_Brand,
	CAST(ROUND((SUM(CASE WHEN s.label = 1 THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 2) AS DECIMAL(10, 2)) AS Percentage_of_dangerous_trips,
    ROUND(AVG(d.driver_rating), 3) AS Average_Rating,
    AVG(d.years_of_exp) AS Average_driver_experience,
    AVG(YEAR(GETDATE()) - d.car_model_year) AS Average_car_age
FROM
    dbo.Tempdriver d
JOIN
    dbo.Tempsafety s ON d.driver_id = s.driver_id
GROUP BY
    d.car_brand
ORDER BY
    percentage_of_dangerous_trips DESC;

-- Complex Query 2

/****** Script for SelectTopNRows command from SSMS  ******/
SELECT
CASE 
when years_of_exp <= 5 THEN '< 5 years'
when years_of_exp < 10 AND years_of_exp > 5 then '< 10 years'
when years_of_exp < 15 AND years_of_exp >= 10 then '< 15 years'
when years_of_exp < 20 AND years_of_exp >= 15 THEN '< 20 years'
else '20+ '
END as experience_group,
SUM(CASE WHEN label = 1 then 1 else 0 END) * 1.0 / COUNT(label) as safety_percentage
FROM Tempdriver d
JOIN Tempsafety s ON d.driver_id = s.driver_id
GROUP BY
CASE 
when years_of_exp <= 5 THEN '< 5 years'
when years_of_exp < 10 AND years_of_exp > 5 then '< 10 years'
when years_of_exp < 15 AND years_of_exp >= 10 then '< 15 years'
when years_of_exp < 20 AND years_of_exp >= 15 THEN '< 20 years'
else '20+ '
END

-- Complex Query 3

-- no. of dangerous rides, total no. of rides, driver name and danger percentage
-- From this we can identify the most dangerous(rated) driver and the safest(rated) driver

select 
	x.driver_id as 'Driver ID', 
	z.driver_name 'Driver Nname',
	x.num_danger as 'Number of Dangerous Rides', 
	y.num_rides as 'Total Number of Rides', 
	round(
        cast(x.num_danger as float) / cast(y.num_rides as float) * 100, 3
    ) 'Danger Percentage'
from 
	(
		select driver_id,  count(*) 'num_danger'
		from Tempsafety
		where label = 1
		group by driver_id
	) x join
	(
		select driver_id, count(*) 'num_rides'
		from Tempsafety
		group by driver_id
	) y on x.driver_id = y.driver_id 
	join
	( 
		select driver_id, driver_name
		from Tempdriver
	) z on y.driver_id = z.driver_id
order by 
'Danger Percentage' desc;
 