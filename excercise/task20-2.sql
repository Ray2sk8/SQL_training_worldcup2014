SELECT
    TRUNCATE(TIMESTAMPDIFF(YEAR, birth, '2014-06-13'), -1) AS age,
    COUNT(id) AS player_count
FROM
    players
GROUP BY
    age
ORDER BY
    age