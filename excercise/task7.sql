SELECT
    p.name,
    COUNT(g.id) AS total_goals
FROM
    players p
LEFT JOIN
    goals g ON p.id = g.player_id
GROUP BY
    p.id
ORDER BY
    total_goals DESC,
    p.name ASC;