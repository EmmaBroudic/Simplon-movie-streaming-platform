-- SQLite
/*pour un même movie_id de la table
ratings, additionner tous les votes
reçus
puis aller chercher le titre du film
indiqué dans la table movies
en liant le movie_id indiqué dans la
table ratings et le movie_id
indiqué dans la table movies*/
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