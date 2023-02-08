-- The dataset for this exercise has been derived from the `Indeed Data Scientist/Analyst/Engineer` [dataset](https://www.kaggle.com/elroyggj/indeed-dataset-data-scientistanalystengineer) on kaggle.com. 
-- SELECT COUNT(*)
-- FROM data_analyst_jobs;

--
-- Before beginning to answer questions, take some time to review the data dictionary and familiarize yourself with the data that is contained in each column.

-- #### Provide the SQL queries and answers for the following questions/tasks using the data_analyst_jobs table you have created in PostgreSQL:

-- 1.	How many rows are in the data_analyst_jobs table?
-- SELECT COUNT(*)
-- FROM data_analyst_jobs

--- 1793 rows.

-- 2.	Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?
-- SELECT *
-- FROM data_analyst_jobs
-- LIMIT 10;
---ExxonMobil

-- 3.	How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?
-- SELECT *
-- FROM data_analyst_jobs
-- WHERE location='TN' OR location='KY';

---There are 21 postings in TN. There are 6 postings in KY. 

-- 4.	How many postings in Tennessee have a star rating above 4?
-- SELECT star_rating
-- FROM data_analyst_jobs
-- WHERE location= 'TN' AND star_rating > '4';

---In TN there are 3 listings with a star rating above 4.


-- 5.	How many postings in the dataset have a review count between 500 and 1000?
-- SELECT review_count
-- FROM data_analyst_jobs
-- WHERE review_count BETWEEN '500' AND '1000';
---There are 151 listings that have a review count between 500 and 1000.

-- 6.	Show the average star rating for companies in each state. The output should show the state as `state` and the average rating for the state as `avg_rating`. Which state shows the highest average rating?
SELECT location AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
GROUP BY location;
---The state with the highest average star rating is NE.

-- 7.	Select unique job titles from the data_analyst_jobs table. How many are there?

-- 8.	How many unique job titles are there for California companies?

-- 9.	Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?

-- 10.	Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?

-- 11.	Find all the job titles that contain the word ‘Analyst’. How many different job titles are there? 

-- 12.	How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common?

-- **BONUS:**
-- You want to understand which jobs requiring SQL are hard to fill. Find the number of jobs by industry (domain) that require SQL and have been posted longer than 3 weeks. 
--  - Disregard any postings where the domain is NULL. 
--  - Order your results so that the domain with the greatest number of `hard to fill` jobs is at the top. 
--   - Which three industries are in the top 4 on this list? How many jobs have been listed for more than 3 weeks for each of the top 4?



