
-- Insert all the Sensor Data table into the 1 table that we just created

--Note: if the database you created is called anything other than 'PAI' please change the from 
--		Statment, also if it takes too long to insert everything you can do it individually

/*
-- Sensor 0
INSERT INTO TempSensor ([bookingID]
      ,[Accuracy]
      ,[Bearing]
      ,[acceleration_x]
      ,[acceleration_y]
      ,[acceleration_z]
      ,[gyro_x]
      ,[gyro_y]
      ,[gyro_z]
      ,[second]
      ,[speed])
SELECT [bookingID]
	  ,[Accuracy]
      ,[Bearing]
      ,[acceleration_x]
      ,[acceleration_y]
      ,[acceleration_z]
      ,[gyro_x]
      ,[gyro_y]
      ,[gyro_z]
      ,[second]
      ,[speed]

FROM [PAI].[dbo].[0_Sensor_DataSet_features_part]

-- Sensor 1
INSERT INTO TempSensor ([bookingID]
      ,[Accuracy]
      ,[Bearing]
      ,[acceleration_x]
      ,[acceleration_y]
      ,[acceleration_z]
      ,[gyro_x]
      ,[gyro_y]
      ,[gyro_z]
      ,[second]
      ,[speed])
SELECT [bookingID]
	  ,[Accuracy]
      ,[Bearing]
      ,[acceleration_x]
      ,[acceleration_y]
      ,[acceleration_z]
      ,[gyro_x]
      ,[gyro_y]
      ,[gyro_z]
      ,[second]
      ,[speed]

FROM [PAI].[dbo].[1-Sensor_DataSet_features_part]

-- Sensor 2
INSERT INTO TempSensor ([bookingID]
      ,[Accuracy]
      ,[Bearing]
      ,[acceleration_x]
      ,[acceleration_y]
      ,[acceleration_z]
      ,[gyro_x]
      ,[gyro_y]
      ,[gyro_z]
      ,[second]
      ,[speed])
SELECT [bookingID]
	  ,[Accuracy]
      ,[Bearing]
      ,[acceleration_x]
      ,[acceleration_y]
      ,[acceleration_z]
      ,[gyro_x]
      ,[gyro_y]
      ,[gyro_z]
      ,[second]
      ,[speed]

FROM [PAI].[dbo].[2-Sensor_DataSet_features_part]

-- Sensor 3
INSERT INTO TempSensor ([bookingID]
      ,[Accuracy]
      ,[Bearing]
      ,[acceleration_x]
      ,[acceleration_y]
      ,[acceleration_z]
      ,[gyro_x]
      ,[gyro_y]
      ,[gyro_z]
      ,[second]
      ,[speed])
SELECT [bookingID]
	  ,[Accuracy]
      ,[Bearing]
      ,[acceleration_x]
      ,[acceleration_y]
      ,[acceleration_z]
      ,[gyro_x]
      ,[gyro_y]
      ,[gyro_z]
      ,[second]
      ,[speed]

FROM [PAI].[dbo].[3_Sensor_DataSet_features_part]

-- Sensor 4
INSERT INTO TempSensor ([bookingID]
      ,[Accuracy]
      ,[Bearing]
      ,[acceleration_x]
      ,[acceleration_y]
      ,[acceleration_z]
      ,[gyro_x]
      ,[gyro_y]
      ,[gyro_z]
      ,[second]
      ,[speed])
SELECT [bookingID]
	  ,[Accuracy]
      ,[Bearing]
      ,[acceleration_x]
      ,[acceleration_y]
      ,[acceleration_z]
      ,[gyro_x]
      ,[gyro_y]
      ,[gyro_z]
      ,[second]
      ,[speed]

FROM [PAI].[dbo].[4_Sensor_DataSet_features_part]
*/


