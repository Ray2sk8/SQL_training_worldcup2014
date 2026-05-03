SELECT
    c.group_name,
    COUNT(g.id) AS total_goals
FROM
    goals g
INNER JOIN
    pairings pair ON g.pairing_id = pair.id
INNER JOIN
    players p ON g.player_id = p.id
INNER JOIN
    countries c ON p.country_id = c.id
WHERE
    pair.kickoff BETWEEN '2014-06-13 00:00:00' AND '2014-06-27 23:59:59'
GROUP BY
    c.group_name
ORDER BY
    c.group_name ASC;