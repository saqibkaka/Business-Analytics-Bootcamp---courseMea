USE testdb;
-- Question # 1 Student ID : 215-saqibhussain151214_Ba_coursemea
select * from airbnb_listings;

-- Question # 2 Student ID : 215-saqibhussain151214_Ba_coursemea
select city from airbnb_listings;

-- Question # 3 Student ID : 215-saqibhussain151214_Ba_coursemea
select city, year_listed from airbnb_listings;

-- Question # 4 Student ID : 215-saqibhussain151214_Ba_coursemea
select id,city from airbnb_listings order by number_of_rooms asc;

-- Question # 5 Student ID : 215-saqibhussain151214_Ba_coursemea
select id,city, number_of_rooms from airbnb_listings order by number_of_rooms desc;

-- Question # 6 Student ID : 215-saqibhussain151214_Ba_coursemea
select* from airbnb_listings
limit 5;

-- Question # 7 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT DISTINCT city
FROM airbnb_listings;


-- Filtering on numeric columns
-- Question # 1 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT *
FROM airbnb_listings
WHERE number_of_rooms >= 3;


-- Question # 2 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT *
FROM airbnb_listings
WHERE number_of_rooms > 3;


-- Question # 3 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT *
FROM airbnb_listings
WHERE number_of_rooms = 3;

-- Question # 4 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT *
FROM airbnb_listings
WHERE number_of_rooms <= 3;


-- Question # 5 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT *
FROM airbnb_listings
WHERE number_of_rooms < 3;


-- Question # 6 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT * 
FROM airbnb_listings
WHERE number_of_rooms BETWEEN 3 AND 6;



-- Filtering on text columns
-- Question # 7 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT * 
FROM airbnb_listings
WHERE city = 'Paris';


-- Question # 8 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT * 
FROM airbnb_listings
WHERE country IN ('USA', 'France');


-- Question # 9 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT * 
FROM airbnb_listings
WHERE city LIKE 'J%' AND city NOT LIKE '%t';



-- Question # 10 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT * 
FROM airbnb_listings
WHERE city = 'Paris' AND number_of_rooms > 3;



-- Question # 11 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT * 
FROM airbnb_listings
WHERE city = 'Paris' OR year_listed > 2012;


-- Filtering on missing data.
-- Question # 12 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT * 
FROM airbnb_listings
WHERE number_of_rooms IS NULL;


-- Question # 13 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT * 
FROM airbnb_listings
WHERE number_of_rooms IS NOT NULL;


-- Aggregating Data
-- Simple aggregations
-- Question # 1 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT SUM(number_of_rooms) AS total_rooms
FROM airbnb_listings;



-- Question # 2 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT AVG(number_of_rooms) AS average_rooms
FROM airbnb_listings;


-- Question # 3 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT * 
FROM airbnb_listings
ORDER BY number_of_rooms DESC
LIMIT 1;


-- Question # 4 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT * 
FROM airbnb_listings
ORDER BY number_of_rooms ASC
LIMIT 1;

-- Grouping, filtering, and sorting
-- Question # 5 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT country, SUM(number_of_rooms) AS total_rooms
FROM airbnb_listings
GROUP BY country;


-- Question # 6 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT country, AVG(number_of_rooms) AS average_rooms
FROM airbnb_listings
GROUP BY country;


-- Question # 7 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT *
FROM airbnb_listings a
WHERE number_of_rooms = (
    SELECT MAX(number_of_rooms)
    FROM airbnb_listings b
    WHERE b.country = a.country
);


-- Question # 8 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT *
FROM airbnb_listings a
WHERE number_of_rooms = (
    SELECT MIN(number_of_rooms)
    FROM airbnb_listings b
    WHERE b.country = a.country
);


-- Question # 9 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT country, AVG(number_of_rooms) AS average_rooms
FROM airbnb_listings
GROUP BY country
ORDER BY average_rooms ASC;


-- Question # 10 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT country, AVG(number_of_rooms) AS average_rooms
FROM airbnb_listings
WHERE country IN ('Japan', 'USA')
GROUP BY country;


-- Question # 11 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT country, COUNT(DISTINCT city) AS number_of_cities
FROM airbnb_listings
GROUP BY country;


-- Question # 12 Student ID : 215-saqibhussain151214_Ba_coursemea
SELECT year_listed, COUNT(id) AS listing_count
FROM airbnb_listings
GROUP BY year_listed
HAVING COUNT(id) > 100;

