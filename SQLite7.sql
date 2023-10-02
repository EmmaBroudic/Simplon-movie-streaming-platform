--SQLite
/*Sélectionner les identifiants de listes, les titres de listes et les dates
de mises à jour des listes dans la table lists.
Filtrer sur les listes qui contiennent plus de trois films
(list_movie_number) et sur les dates inférieures au 29 septembre 2022.
Renvoyer la liste de résultats classées par ordre croissant de dates.*/
SELECT list_id, list_title, list_update_timestamp_utc
FROM lists
WHERE list_movie_number > 3 AND list_update_timestamp_utc < '2022-09-29'
ORDER BY list_update_timestamp_utc;