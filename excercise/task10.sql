SELECT
    COUNT(g.id) AS total_own_goals
FROM
    goals g
WHERE
    g.player_id IS NULL;