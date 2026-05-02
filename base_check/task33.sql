
SELECT
    g.pairing_id,
    g.goal_time
FROM
    goals g
WHERE
    g.player_id IS NOT NULL
ORDER BY
    g.pairing_id ASC,
    g.goal_time ASC