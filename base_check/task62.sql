SELECT
    g.goal_time,
    p.name,
    c.name
FROM
    goals g
    LEFT JOIN players p ON p.id = g.player_id
    LEFT JOIN countries c ON c.id = p.country_id