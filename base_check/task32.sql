
SELECT
    g.pairing_id,
    g.goal_time
FROM
    goals g
WHERE
    g.player_id IS NULL