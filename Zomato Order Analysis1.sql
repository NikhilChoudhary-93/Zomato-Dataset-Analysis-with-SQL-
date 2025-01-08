
-- Question: What database is being used for the analysis?
USE sample_foodapp;

-- Question: What is the structure of the 'zomato' table?
DESC zomato;

-- Question: What does the entire 'zomato' dataset look like?
SELECT * FROM zomato;

-- Question: What do the first 10 records in the 'zomato' dataset look like?
SELECT * FROM zomato LIMIT 10;

-- Question: How many records are present in the 'zomato' dataset?
SELECT COUNT(*) FROM zomato;

-- Question: What are the minimum, maximum, and average ratings of restaurants?
SELECT 
    ROUND(MIN(rating), 2) AS min_rating,
    ROUND(MAX(rating), 2) AS max_rating,
    ROUND(AVG(rating), 2) AS avg_rating
FROM zomato;

-- Question: What are the minimum, maximum, and average number of ratings received by restaurants?
SELECT 
    ROUND(MIN(num_of_ratings), 2) AS min_num_of_ratings,
    ROUND(MAX(num_of_ratings), 2) AS max_num_of_ratings,
    ROUND(AVG(num_of_ratings), 2) AS avg_num_of_ratings
FROM zomato;

-- Question: What are the minimum, maximum, and average cost for two at restaurants?
SELECT 
    ROUND(MIN(avg_cost), 2) AS min_avg_cost,
    ROUND(MAX(avg_cost), 2) AS max_avg_cost,
    ROUND(AVG(avg_cost), 2) AS avg_avg_cost
FROM zomato;

-- Question: What is the count of restaurants based on their restaurant type?
SELECT 
    restaurant_type, 
    COUNT(*) AS count_of_restaurants
FROM zomato
GROUP BY restaurant_type;

-- Question: What is the average cost for two at restaurants based on their restaurant type?
SELECT 
    restaurant_type, 
    ROUND(AVG(avg_cost), 2) AS avg_cost_for_two
FROM zomato
GROUP BY restaurant_type;

-- Question: What is the count of restaurants in each location?
SELECT 
    local_address, 
    COUNT(*) AS count_of_restaurants
FROM zomato
GROUP BY local_address;

-- Question: Which locations have the highest average rating for restaurants?
SELECT 
    local_address, 
    ROUND(AVG(rating), 2) AS avg_rating
FROM zomato
GROUP BY local_address
ORDER BY avg_rating DESC;

-- Question: What is the distribution of ratings across the dataset?
SELECT 
    rating, 
    COUNT(*) AS count_of_restaurants
FROM zomato
GROUP BY rating
ORDER BY rating DESC;

-- Question: What are the top 5 most highly-rated restaurants?
SELECT 
    restaurant_id, 
    restaurant_name, 
    rating
FROM zomato
ORDER BY rating DESC
LIMIT 5;

-- Question: What is the average cost for two at restaurants that allow table bookings?
SELECT 
    table_booking, 
    ROUND(AVG(avg_cost), 2) AS avg_cost_for_two
FROM zomato
GROUP BY table_booking;

-- Question: What is the distribution of cuisines offered by restaurants?
SELECT 
    cuisines_type, 
    COUNT(*) AS count_of_cuisines
FROM zomato
GROUP BY cuisines_type
ORDER BY count_of_cuisines DESC;

-- Question: Which areas have the highest number of restaurants?
SELECT 
    area, 
    COUNT(*) AS count_of_restaurants
FROM zomato
GROUP BY area
ORDER BY count_of_restaurants DESC;

-- Question: What is the relationship between online order availability and average restaurant rating?
SELECT 
    online_order, 
    ROUND(AVG(rating), 2) AS avg_rating
FROM zomato
GROUP BY online_order;
