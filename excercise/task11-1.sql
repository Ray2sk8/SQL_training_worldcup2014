SELECT
    c.group_name,
    COUNT(g.id) AS total_goals
FROM
    goals g
INNER JOIN
    players p ON g.player_id = p.id
INNER JOIN
    countries c ON p.country_id = c.id
GROUP BY
    c.group_name
ORDER BY
    c.group_name ASC;