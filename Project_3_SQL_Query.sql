--Yelp_table
-- Drop table if exists
DROP TABLE yelp_table;
-- Create new table
CREATE TABLE yelp_table (
	name VARCHAR NOT NULL,
	location VARCHAR NOT NULL,
	categories VARCHAR NOT NULL,
	rating FLOAT NOT NULL,
	price VARCHAR,
	reviews INT NOT NULL
);
-- View table columns and datatypes
SELECT * FROM yelp_table;


--Weather_data
-- Drop table if exists
DROP TABLE weather_data;
-- Create new table
CREATE TABLE weather_data (
    name VARCHAR(50),
    datetime TIMESTAMP,
    tempmin FLOAT,
    tempmax FLOAT,
    sunrise TIMESTAMP,
    sunset TIMESTAMP,
    icon VARCHAR(20),
    daily_avg_temp FLOAT,
    month VARCHAR(10)
);
-- View table columns and datatypes
SELECT * FROM weather_data;

--Top5
-- Drop table if exists
DROP TABLE top5;
-- Create new table
CREATE TABLE top5 (
    state VARCHAR(50),
    average_household_income FLOAT,
    dining_out_per_household FLOAT,
    entertainment_recreation_per_household FLOAT,
    median_household_income FLOAT,
	population FLOAT

);
-- View table columns and datatypes
SELECT * FROM top5;

--Bottom5
-- Drop table if exists
DROP TABLE bottom5;
-- Create new table
CREATE TABLE bottom5 (
    state VARCHAR(50),
    average_household_income FLOAT,
    dining_out_per_household FLOAT,
    entertainment_recreation_per_household FLOAT,
    median_household_income FLOAT,
	population FLOAT

);
-- View table columns and datatypes
SELECT * FROM bottom5;



-- Possible Use Cases

SELECT location, COUNT(location)
FROM yelp_table
GROUP BY location;

-- Check the average number of reviews for each location per city 
SELECT location, AVG(reviews) 
FROM yelp_table
GROUP BY location
ORDER BY "avg" DESC;

SELECT * FROM yelp_table
WHERE location = 'East Newark'

-- Check the average rating per location per city
SELECT location, price, AVG(rating)
FROM yelp_table
GROUP BY location, price
ORDER BY location DESC;