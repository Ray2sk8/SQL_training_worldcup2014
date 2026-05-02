WITH goal_info AS (
    SELECT
        g.pairing_id,
        CASE
            WHEN g.player_id IS NULL THEN 9999
            ELSE g.player_id
        END AS goal_id,
        g.goal_time
    FROM
        goals g
)
SELECT
    g.pairing_id,
    g.goal_id,
    g.goal_time
FROM
    goal_info g
ORDER BY
    g.pairing_id ASC;