
-- Changing format for Safety and Driver dataset to the correct type

-- Driver

-- date of birth
/*
UPDATE Tempdriver
SET date_of_birth = CASE 
    WHEN date_of_birth = '' THEN NULL 
    ELSE CAST(date_of_birth AS date)
END;
*/

-- years of exp
/*
UPDATE Tempdriver
SET years_of_exp = CASE 
    WHEN years_of_exp = '' THEN NULL 
    ELSE CAST(years_of_exp AS INT)
END;
*/

-- gender
/*
UPDATE Tempdriver
SET car_model_year = CASE 
    WHEN car_model_year = '' THEN NULL 
    ELSE CAST(car_model_year AS INT)
END;
*/

-- driver rating
/*
UPDATE Tempdriver
SET driver_rating = CASE 
    WHEN driver_rating = '' THEN NULL 
    ELSE CAST(driver_rating AS float)
END;
*/


-- Safety

-- bookingID
/*
UPDATE Tempsafety
SET bookingID = CASE 
    WHEN bookingID = '' THEN NULL 
    ELSE CAST(bookingID AS bigint)
END;
*/

-- driver id
/*
UPDATE Tempsafety
SET driver_id = CASE 
    WHEN driver_id = '' THEN NULL 
    ELSE CAST(driver_id AS bigint)
END;
*/

-- label
/*
UPDATE Tempsafety
SET label = CASE 
    WHEN label = '' THEN NULL 
    ELSE CAST(label AS int)
END;
*/


































































