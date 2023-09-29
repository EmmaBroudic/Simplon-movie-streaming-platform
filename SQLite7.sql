--SQLite
SELECT list_id, list_title, list_update_timestamp_utc
FROM lists
WHERE list_movie_number > 3 AND list_update_timestamp_utc < '2022-09-29'
ORDER BY list_update_timestamp_utc;