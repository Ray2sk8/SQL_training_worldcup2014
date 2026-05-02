SELECT
    g.goal_time,
    p.name
FROM
    players p RIGHT JOIN goals g ON p.id = g.player_id
-- ORDER BY
--     p.name ASC