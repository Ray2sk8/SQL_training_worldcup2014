SELECT
    COUNT(*) AS jpn_goal_count
FROM
    goals g
WHERE
    g.player_id IN (
        SELECT
            p.id
        FROM
            players p
        WHERE
            p.country_id = (SELECT c.id FROM countries c WHERE c.name = '日本')
    );