
-- Change the format of the Sensor data to fit the correct datatype

-- NOTE this might take alot of time since there is quite abit of data, so we suggest you run independently


-- second
/*
UPDATE TempSensor
SET second = CASE 
    WHEN second = '' THEN NULL 
    ELSE CAST(second AS float)
END;
*/

-- bookingID
/*
UPDATE TempSensor
SET bookingID = CASE 
    WHEN bookingID = '' THEN NULL 
    ELSE CAST(bookingID AS bigint)
END;
*/

-- accuracy
/*
UPDATE TempSensor
SET Accuracy = CASE 
    WHEN Accuracy = '' THEN NULL 
    ELSE ROUND(CAST(Accuracy AS float), 2)
END;
*/

-- Bearing
/*
UPDATE TempSensor
SET Bearing = CASE 
    WHEN Bearing = '' THEN NULL 
    ELSE ROUND(CAST(Bearing AS float), 2)
END;
*/

-- acceleration_x
/*
UPDATE TempSensor
SET acceleration_x = CASE 
    WHEN acceleration_x = '' THEN NULL 
    ELSE ROUND(CAST(acceleration_x AS float), 3)
END;
*/

-- acceleration_y
/*
UPDATE TempSensor
SET acceleration_y = CASE 
    WHEN acceleration_y = '' THEN NULL 
    ELSE ROUND(CAST(acceleration_y AS float), 3)
END;
*/

-- acceleration_z
/*
UPDATE TempSensor
SET acceleration_z = CASE 
    WHEN acceleration_z = '' THEN NULL 
    ELSE ROUND(CAST(acceleration_z AS float), 3)
END;
*/

-- gyro_x
/*
UPDATE TempSensor
SET gyro_x = CASE 
    WHEN gyro_x = '' THEN NULL 
    ELSE ROUND(CAST(gyro_x AS float), 4)
END;
*/

-- gyro_y
/*
UPDATE TempSensor
SET gyro_y = CASE 
    WHEN gyro_y = '' THEN NULL 
    ELSE ROUND(CAST(gyro_y AS float), 4)
END;
*/

-- gyro_z
/*
UPDATE TempSensor
SET gyro_z = CASE 
    WHEN gyro_z = '' THEN NULL 
    ELSE ROUND(CAST(gyro_z AS float), 4)
END;
*/

-- speed
/*
UPDATE TempSensor
SET speed = CASE 
    WHEN speed = '' THEN NULL 
    ELSE ROUND(CAST(speed AS float), 2)
END;
*/






































































