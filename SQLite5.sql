--SQLite
SELECT user_id AS number_of_active_users
FROM ratings
GROUP BY user_id
HAVING COUNT(user_id) > 10;