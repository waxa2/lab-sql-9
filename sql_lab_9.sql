
use sakila;

-- Instructions
 -- In this lab we will find the customers who were active in consecutive months of May and June. Follow the steps to 
 -- complete the analysis.

-- 1. Create a table rentals_may to store the data from rental table with information for the month of May.
-- 2. Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
CREATE TABLE rentals_may as
SELECT *
FROM rental
WHERE MONTH(rental_date)=5;

-- 3. Create a table rentals_june to store the data from rental table with information for the month of June.
-- 4. Insert values in the table rentals_june using the table rental, filtering values only for the month of June.

CREATE TABLE rentals_june as
SELECT *
FROM rental
WHERE MONTH(rental_date)=6;

-- 5. Check the number of rentals for each customer for May.
SELECT customer_id,COUNT(rental_id) as number_of_rentals
FROM rentals_may
GROUP BY customer_id
ORDER BY number_of_rentals DESC;

-- 6. Check the number of rentals for each customer for June.
SELECT customer_id,COUNT(rental_id) as number_of_rentals
FROM rentals_june
GROUP BY customer_id
ORDER BY number_of_rentals DESC;

-- Create a Python connection with SQL database and retrieve the results of the last two queries (also mentioned below) as dataframes:

-- 7. Check the number of rentals for each customer for May

-- 8. Check the number of rentals for each customer for June

-- Hint: You can store the results from the two queries in two separate dataframes.

-- 9.Write a function that checks if customer borrowed more or less films in the month of June as compared to May.

-- Hint: For this part, you can create a join between the two dataframes created before, using the merge function available for pandas dataframes. Here is a link to the documentation for the merge function.