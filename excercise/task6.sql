SELECT
    p.name,
    (
        SELECT
            COUNT(g.id)
        FROM
            goals g
        WHERE
            g.player_id = p.id
    ) AS total_goals
FROM
    players p
ORDER BY
    total_goals DESC,
    p.name ASC;