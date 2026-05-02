SELECT
    g.pairing_id,
    IFNULL(g.player_id, 9999) AS goal_time,
    g.goal_time
FROM
    goals g
ORDER BY
    g.pairing_id ASC;