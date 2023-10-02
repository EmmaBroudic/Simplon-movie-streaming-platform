--SQLite
/*sélectionner les user_id
dans la table ratings
si un même user_id apparaît
plus de 10 fois*/
SELECT user_id AS number_of_active_users
FROM ratings
GROUP BY user_id
HAVING COUNT(user_id) > 9;