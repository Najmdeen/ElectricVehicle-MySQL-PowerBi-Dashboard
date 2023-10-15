SELECT * FROM ELECTRIC_VEHICLES;

-- 1. Count of vehicles by Make (Brand)
SELECT "Make", COUNT(*) as Vehicle_Count
FROM electric_vehicles
GROUP BY "Make"
ORDER BY Vehicle_Count DESC;

-- 2. Average electric range by Electric Vehicle Type
SELECT "Electric Vehicle Type", AVG("Electric Range") as Average_Range
FROM Electric_Vehicles
GROUP BY "Electric Vehicle Type";

-- 3. Count of vehicles by Model Year
SELECT "Model Year", COUNT(*) AS Model_year_count
FROM Electric_Vehicles
GROUP BY "Model Year"
ORDER BY "Model Year" DESC;

-- 4. Distribution of vehicles based on Clean Alternative Fuel Vehicle (CAFV) Eligibility
SELECT "Clean Alternative Fuel Vehicle (CAFV) Eligibility", COUNT(*) as Vehicle_Count
FROM Electric_Vehicles
GROUP BY "Clean Alternative Fuel Vehicle (CAFV) Eligibility";

--5. Average Base MSRP by Make
SELECT "Make", AVG("Base MSRP") as Average_MSRP
FROM Electric_Vehicles
GROUP BY "Make"
ORDER BY Average_MSRP DESC;


-- 6. Count of vehicles by County
SELECT "County", "Vehicle Location", COUNT(*) as Vehicle_Count
FROM Electric_Vehicles
GROUP BY "County", "Vehicle Location"
ORDER BY Vehicle_Count DESC
LIMIT 5;


-- 7. Top 5 cities with the highest number of registered electric vehicles
SELECT "City", COUNT(*) as Vehicle_Count
FROM Electric_Vehicles
GROUP BY "City"
ORDER BY Vehicle_Count DESC
LIMIT 5;

-- 8. Distribution of Electric Vehicle Types (BEV vs. PHEV)
SELECT "Electric Vehicle Type", COUNT(*) as Vehicle_Count
FROM Electric_Vehicles
GROUP BY "Electric Vehicle Type";

-- 9. Distribution of vehicles based on their Electric Utility provider
SELECT "Electric Utility", COUNT(*) as Vehicle_Count
FROM Electric_Vehicles
GROUP BY "Electric Utility"
ORDER BY Vehicle_Count DESC;

-- 10. Average electric range by Make
SELECT "Make", AVG("Electric Range") as Average_Range
FROM Electric_Vehicles
GROUP BY "Make"
ORDER BY Average_Range DESC;


-- 11. Count of vehicles based on their legislative district
SELECT "Legislative District", COUNT(*) as Vehicle_Count
FROM Electric_Vehicles
GROUP BY "Legislative District"
ORDER BY Vehicle_Count DESC;

-- 12. Top 5 models with the highest registration
SELECT "Model", COUNT(*) as Vehicle_Count
FROM Electric_Vehicles
GROUP BY "Model"
ORDER BY Vehicle_Count DESC
LIMIT 5;



