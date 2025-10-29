CREATE DATABASE weather_report;
USE weather_report;

-- 1. Average temperature for year,2012
SELECT ROUND(AVG(Temp_C), 2) AS Avg_Temp
FROM weather;

-- 2. Days where temperature was above yearly average
SELECT `Date` AS Day, ROUND(AVG(Temp_C), 2) AS Avg_Daily_Temp
FROM weather
GROUP BY Day
HAVING Avg_Daily_Temp > (
 SELECT AVG(Temp_C) FROM weather
);

-- 3. Categorizing the year quarterly
SELECT *, (
  CASE 
    WHEN `Date` BETWEEN '1/1/2012' AND '3/31/2012'  THEN '1st Quarter'
    WHEN `Date` BETWEEN '4/1/2012' AND '6/31/2012'  THEN '2nd Quarter'
    WHEN `Date` BETWEEN '7/1/2012' AND '9/31/2012'  THEN '3rd Quarter'
    WHEN `Date` BETWEEN '10/1/2012' AND '12/31/2012'  THEN '4th Quarter'
    ELSE 'Never Happened'
  END
  ) AS Year_Quarter FROM weather;


-- 4. Hottest and coldest temperatures recorded
SELECT MAX(Temp_C) AS Max_Temp, MIN(Temp_C) AS Min_Temp
FROM weather;

-- 5. Average daily temperature trend
SELECT `Date`, ROUND(AVG(Temp_C), 2) AS Avg_Daily_Temp
FROM weather
GROUP BY `Date`
ORDER BY `Date`;

-- 6. Average temperature by hour of the day
SELECT HOUR(`Time`) AS Hour, ROUND(AVG(Temp_C), 2) AS Avg_Temp
FROM weather
GROUP BY Hour
ORDER BY Hour;

-- 7. Most frequent weather conditions
SELECT Weather, COUNT(*) AS Frequency
FROM weather
GROUP BY Weather
ORDER BY Frequency DESC
LIMIT 10;

-- 8. Average visibility by weather type
SELECT Weather, ROUND(AVG(Visibility_km), 2) AS Avg_Visibility
FROM weather
GROUP BY Weather
ORDER BY Avg_Visibility ASC;

-- 9. Average humidity by temperature range
SELECT 
  CASE 
    WHEN Temp_C < 0 THEN 'Freezing'
    WHEN Temp_C BETWEEN 0 AND 15 THEN 'Cold'
    WHEN Temp_C BETWEEN 16 AND 30 THEN 'Mild'
    ELSE 'Hot'
  END AS Temp_Range,
  ROUND(AVG(Rel_Hum_Percent), 2) AS Avg_Humidity
FROM weather
GROUP BY Temp_Range;

-- 10. Wind speed extremes
SELECT `Date`, MAX(Wind_Speed_km_h) AS Max_Wind
FROM weather
GROUP BY `Date`
HAVING Max_Wind > 50
ORDER BY Max_Wind DESC;

-- 11. Monthly average pressure
SELECT YEAR(`Date`) AS Year, MONTH(`Date`) AS Month, ROUND(AVG(Press_kPa), 2) AS Avg_Pressure
FROM  weather  
GROUP BY Year, Month
ORDER BY Year, Month;

-- 12. Foggiest days (highest fog hours)
SELECT `Date`, COUNT(*) AS Fog_Hours
FROM  weather 
WHERE Weather LIKE '%Fog%'
GROUP BY `Date`
ORDER BY Fog_Hours DESC
LIMIT 10;

-- 13. Rain vs Snow occurrence
SELECT 
  CASE 
    WHEN Weather LIKE '%Rain%' THEN 'Rain'
    WHEN Weather LIKE '%Snow%' THEN 'Snow'
    ELSE 'Other'
  END AS Weather_Type,
  COUNT(*) AS count
FROM  weather 
GROUP BY Weather_Type
ORDER BY Count_ DESC;

-- 14. Hottest days (avg temp > 30°C)
SELECT `Date`, ROUND(AVG(Temp_C), 2) AS Avg_Temp
FROM weather 
GROUP BY `Date`
HAVING Avg_Temp > 30
ORDER BY Avg_Temp DESC;

-- 15. Coldest days (avg temp < -10°C)
SELECT `Date`, ROUND(AVG(Temp_C), 2) AS Avg_Temp
FROM  weather 
GROUP BY `Date`
HAVING Avg_Temp < -10
ORDER BY Avg_Temp ASC
LIMIT 10;

-- 16. Seasonal averages
SELECT 
  CASE 
    WHEN MONTH(`Date`) IN (12, 1, 2) THEN 'Winter'
    WHEN MONTH(`Date`) IN (3, 4, 5) THEN 'Spring'
    WHEN MONTH(`Date`) IN (6, 7, 8) THEN 'Summer'
    ELSE 'Fall'
  END AS Season,
  ROUND(AVG(Temp_C), 2) AS Avg_Temp,
  ROUND(AVG(Wind_Speed_km_h), 2) AS Avg_Wind,
  ROUND(AVG(Rel_Hum_Percent), 2) AS Avg_Humidity
FROM  weather
GROUP BY Season;

-- 17. Days with below-average visibility
SELECT `Date`, ROUND(AVG(Visibility_km), 2) AS Avg_Visibility
FROM  weather 
GROUP BY `Date`
HAVING Avg_Visibility < (
    SELECT AVG(Visibility_km) FROM Weather
)
ORDER BY Avg_Visibility ASC
LIMIT 10;

-- 18. Days with extreme wind (> 50 km/h)
SELECT `Date` AS Day, MAX(`Wind Speed_km/h`) AS Max_Wind
FROM Weather
GROUP BY Day
HAVING Max_Wind > 50
ORDER BY Max_Wind DESC;

-- 19. Pressure extremes and related weather
SELECT Weather, MIN(Press_kPa) AS Min_Pressure, MAX(Press_kPa) AS Max_Pressure
FROM weather
GROUP BY Weather
ORDER BY Min_Pressure ASC
LIMIT 5;


