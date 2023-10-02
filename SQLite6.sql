-- SQLite
/*Sélectionner les titres de films dans la table movies en fonction
des conditions ci-dessous :

calculer la moyenne des ratings pour un film
en regroupant les notes par movie_id

calculer le nombre de votes reçus pour
un film en regroupant les notes
par movie_id

trier les résultats du plus grand au plus petit
-> via les moyennes
-> via le nombre de votes
-> limiter à cinq résultats

faire apparaître les titres en liant le movie_id de la table
movies et de la table ratings*/

SELECT best_movies_title.movie_title
FROM movies AS best_movies_title
JOIN (
    SELECT average_rating.movie_id
    FROM (
        SELECT movie_id, AVG(rating_score) AS average
        FROM ratings
        GROUP BY movie_id
    ) AS average_rating
    JOIN (
        SELECT movie_id, COUNT(movie_id) AS movie_count
        FROM ratings
        GROUP BY movie_id
    ) AS nbre_rating
    ON average_rating.movie_id = nbre_rating.movie_id
    ORDER BY average_rating.average DESC, nbre_rating.movie_count DESC
    LIMIT 5
) AS top_average_movies
ON best_movies_title.movie_id = top_average_movies.movie_id;