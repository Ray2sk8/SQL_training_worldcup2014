SELECT
    c.name,
    p.name,
    g.goal_time
FROM
    goals g LEFT JOIN players p ON p.id = g.player_id,
    countries c