-- SQLite
SELECT movie_title
FROM movies
JOIN (
    SELECT movie_id, SUM(rating_score) AS rating_total
    FROM ratings
    GROUP BY movie_id
) AS movie_ratings
ON movies.movie_id = movie_ratings.movie_id
ORDER BY movie_ratings.rating_total DESC
LIMIT 1;