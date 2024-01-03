
-- Inserting driver and Safety (since its quite short we will do it together)
-- Once again if your database is called something other than 'PAI' please change from statement

-- Driver's data
/*
INSERT INTO Tempdriver([driver_id]
      ,[driver_name]
      ,[date_of_birth]
      ,[years_of_exp]
      ,[gender]
      ,[car_brand]
      ,[car_model_year]
      ,[driver_rating])

SELECT [driver_id]
      ,[driver_name]
      ,[data_of_birth]
      ,[No_of_Years_driving_exp]
      ,[gender]
      ,[car_brand]
      ,[car_model_year]
      ,[driver_rating]

FROM [PAI].[dbo].[drivers_dataset (1)]
*/

-- Safety Data
/*
INSERT INTO Tempsafety([bookingID]
      ,[driver_id]
      ,[label])

SELECT [bookingID]
      ,[driver_id]
      ,[label]

FROM [PAI].[dbo].[safety_status_dataset (1)]
*/





















