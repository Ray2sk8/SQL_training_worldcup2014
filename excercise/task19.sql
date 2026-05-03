SELECT
    TIMESTAMPDIFF(YEAR, p.birth,  '2014-06-13') AS age,
    COUNT(*) AS player_count
FROM
    players p
GROUP BY
    age
ORDER BY
    age ASC;