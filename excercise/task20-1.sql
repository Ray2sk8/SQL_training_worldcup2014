SELECT
    CONCAT((TIMESTAMPDIFF(YEAR, p.birth,  '2014-06-13') DIV 10) * 10, '代') AS age_group,
    COUNT(*) AS player_count
FROM
    players p
GROUP BY
    age_group
ORDER BY
    age_group;