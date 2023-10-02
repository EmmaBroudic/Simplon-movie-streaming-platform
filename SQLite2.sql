-- SQLite
/*compter les user_id dans la table
ratings.
avec distinct,
un identifiant qui reviendrait plusieurs
fois dans la liste ne sera compté
qu'une seule fois*/
SELECT count(DISTINCT user_id)
FROM ratings;