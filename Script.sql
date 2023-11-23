SELECT genres, COUNT(*) AS movie_count
FROM movies
GROUP BY genres
ORDER BY movie_count DESC;

SELECT title, revenue
FROM movies
ORDER BY revenue DESC
LIMIT 1;

SELECT COUNT(*) AS adult_movie_count
FROM movies
WHERE adult = true;

SELECT COUNT(duration) AS non_null_durations
FROM movies;

SELECT title, popularity
FROM movies
WHERE popularity >= 5
ORDER BY popularity DESC;

SELECT original_language, COUNT(*) AS number_of_movies
FROM movies
GROUP BY original_language
ORDER BY number_of_movies DESC;


SELECT title, release_year
FROM movies
WHERE release_year = 1998;


SELECT title, status
FROM movies
WHERE status = 'Unreleased';

SELECT title
FROM movies
WHERE belongs_to_collection = 'Bulldog Drummond''s Secret Police';

SELECT title, 
       budget, 
       revenue, 
       CASE 
           WHEN budget = 0 THEN NULL
           ELSE ((revenue - budget) / budget) * 100
       END AS profitability
FROM movies
WHERE budget <> 0;





