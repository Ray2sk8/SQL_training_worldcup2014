SELECT
    c.name,
    p.name,
    g.goal_time
FROM
    goals g INNER JOIN players p ON p.id = g.player_id,
    countries c
WHERE
    g.player_id IS NOT NULL