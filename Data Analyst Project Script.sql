--Q1 Answer: 1793

SELECT COUNT(*)
FROM data_analyst_jobs;

--Q2 Answer: ExxonMobil

SELECT *
FROM data_analyst_jobs
	LIMIT 10;

--Q3a Answer: 21

SELECT COUNT (*)
FROM data_analyst_jobs
	WHERE location ='TN';

-- Q3b Answer: 27

SELECT COUNT(*)
FROM data_analyst_jobs
	WHERE location = 'TN'
	OR location = 'KY';

-- Q4 Answer: 3

SELECT COUNT(*)
FROM data_analyst_jobs
	WHERE location = 'TN' AND star_rating >4;

-- Q5 Answer: 151

SELECT COUNT (*)
FROM data_analyst_jobs
	WHERE review_count BETWEEN 500 AND 1000;

-- Q6 Answer: NE
SELECT location AS state,
	AVG(star_rating) AS avg_rating
	FROM data_analyst_jobs
	WHERE star_rating IS NOT NULL
	GROUP BY location
	ORDER BY avg_rating DESC;

-- Q7 Answer: 881

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs;

-- Q8 Answer: 230

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
	WHERE location = 'CA';

-- Q9 Answer: 40

SELECT DISTINCT company,
	AVG(star_rating) AS avg_rating
	FROM data_analyst_jobs
	WHERE company IS NOT NULL AND review_count > 5000
	GROUP BY company;

-- Q10 Answer: American Express 4.199999

SELECT DISTINCT company, 
	AVG(star_rating) AS avg_rating
	FROM data_analyst_jobs
	WHERE company IS NOT NULL AND review_count > 5000
	GROUP BY company
	ORDER by avg_rating DESC;

-- Q11 Answer: 1669

SELECT title
FROM data_analyst_jobs
	WHERE title ILIKE '%Analyst%';

SELECT COUNT (title)
FROM data_analyst_jobs
	WHERE title ILIKE '%Analyst%';

-- Q12 Answer: 4, Data

SELECT title
FROM data_analyst_jobs
	WHERE title NOT ILIKE '%Analyst%' 
	AND title NOT ILIKE '%Analytics%';

-- Bonus

SELECT domain AS Industry, 
COUNT(title) AS number_of_jobs
FROM data_analyst_jobs
	WHERE domain IS NOT NULL
		AND skill LIKE '%SQL%'
		AND days_since_posting > 21
	GROUP BY domain
	ORDER BY number_of_jobs DESC
	LIMIT 4;
	
	
