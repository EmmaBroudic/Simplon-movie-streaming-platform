--SQLite
/*dans la table movies
sélectionner le movie_title
si le réalisateur indiqué
dans la colonne director_name
est 'George Lucas'
puis, classer les résultats par nombre
croissant à l'aide des années indiquées
dans la colonne movie_release_year
de la même table*/
SELECT movie_title
FROM movies
WHERE director_name = 'George Lucas'
ORDER BY movie_release_year ASC;