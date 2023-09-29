-- SQLite
SELECT best_rating_movies.movie_title
FROM movies AS best_rating_movies
JOIN (
    SELECT total_rating.movie_id
    FROM (
        SELECT movie_id, SUM(rating_score) AS rating_total
        FROM ratings
        GROUP BY movie_id
    ) AS total_rating
    JOIN (
        SELECT movie_id, COUNT(movie_id) AS movie_count
        FROM ratings
        GROUP BY movie_id
    ) AS nbre_rating
    ON total_rating.movie_id = nbre_rating.movie_id
    ORDER BY total_rating.rating_total / nbre_rating.movie_count DESC, nbre_rating.movie_count DESC
    LIMIT 5
) AS top_movies
ON best_rating_movies.movie_id = top_movies.movie_id;