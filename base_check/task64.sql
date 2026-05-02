SELECT
    g.goal_time,
    (
        SELECT
            p.name
        FROM
            players p
        WHERE
            p.id = g.player_id
    ) AS player_name
FROM
    goals g
WHERE
    g.player_id IS NOT NULL;