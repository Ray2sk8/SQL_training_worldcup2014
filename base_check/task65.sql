SELECT
    g.goal_time,
    p.name
FROM
    players p RIGHT JOIN goals g ON p.id = g.player_id
WHERE
    g.player_id IS NOT NULL