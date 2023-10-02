-- SQLite
/*Sélectionner la colonne movie_title
de la table movies
si l'année indiquée dans la colonne movie_release_year
de la même table
est supérieure à 2020*/
SELECT movie_title
FROM movies
WHERE movie_release_year > 2020;