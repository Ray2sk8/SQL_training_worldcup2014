SELECT
    COUNT(g.player_id) AS count
FROM
    goals g


SELECT
    COUNT(*) AS count
FROM
    goals g
WHERE
    g.player_id IS NOT NULL
