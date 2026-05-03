SELECT
    (TIMESTAMPDIFF(YEAR, p.birth,  '2014-06-13') DIV 5) *5 AS age_decade,
    COUNT(*) AS player_count
FROM
    players p
GROUP BY
    age_decade
ORDER BY
    age_decade;