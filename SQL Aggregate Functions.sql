SELECT * FROM netflix_titles;

SELECT type, COUNT(*) AS count
FROM netflix_titles
GROUP BY type
ORDER BY count DESC
LIMIT 1; 

SELECT listed_in, COUNT(*) AS count
FROM netflix_titles
GROUP BY listed_in
ORDER BY count DESC;

SELECT *
FROM netflix_titles
WHERE listed_in LIKE '%movie%'; 

SELECT MAX(date_added) AS most_recent_release
FROM netflix_titles;

SELECT *
FROM netflix_titles
WHERE date_added < 'September 22, 2022';  

SELECT * FROM netflix_titles;

SELECT *
FROM netflix_titles
WHERE date_added < 'September 22, 2022';  


SELECT type, COUNT(*) AS count
FROM netflix_titles
GROUP BY type
ORDER BY count DESC
LIMIT 1;

SELECT release_year, COUNT(*) AS count
FROM netflix_titles
GROUP BY release_year
ORDER BY count DESC
LIMIT 10;

SELECT title, LENGTH(title) AS title_length
FROM netflix_titles
ORDER BY title_length DESC
LIMIT 7;

SELECT listed_in, COUNT(*) AS count
FROM netflix_titles
WHERE YEAR(date_added) = 2021
GROUP BY listed_in
ORDER BY count DESC
LIMIT 10;

SELECT COUNT(*) AS total_movies
FROM netflix_titles
WHERE type = 'Movie';

SELECT * FROM netflix_titles;

SELECT COUNT(*) AS total_movies
FROM netflix_titles
WHERE type = 'TV Show';

SELECT title, duration
FROM netflix_titles
WHERE type = 'Movie'
ORDER BY duration DESC
LIMIT 5;

SELECT COUNT(*) AS count
FROM netflix_titles
WHERE type = 'TV Show' AND rating > 4.5;  

SELECT * FROM netflix_titles;

SELECT COUNT(*) AS count
FROM netflix_titles
WHERE type = 'TV Show' AND rating > 'PG';

SELECT release_year, COUNT(*) AS count
FROM netflix_titles
GROUP BY release_year
ORDER BY count DESC
LIMIT 10;

#Top 10 Most Frequent Directors 
SELECT director, COUNT(*) AS count
FROM netflix_titles
WHERE director IS NOT NULL AND director <> ''
GROUP BY director
ORDER BY count DESC
LIMIT 10;

#Average Rating by Release Year
SELECT release_year, AVG(rating) AS avg_rating
FROM netflix_titles
GROUP BY release_year;

#Distribution of Titles by Country
SELECT country, COUNT(*) AS count
FROM netflix_titles
GROUP BY country
ORDER BY count DESC;

#
SELECT type, AVG(rating) AS avg_rating
FROM netflix_titles
GROUP BY type
ORDER BY avg_rating DESC;

#
SELECT title, type, rating, release_year
FROM netflix_titles
WHERE release_year >= YEAR(CURDATE()) - 2  
  AND rating >= (  -- Adjust threshold as needed
    SELECT AVG(rating)
    FROM netflix_titles
  )
ORDER BY rating DESC;

# Long Movies by Type
SELECT title, type, duration
FROM netflix_titles
WHERE type = 'Movie'  
  AND duration > 100
ORDER BY duration DESC;

