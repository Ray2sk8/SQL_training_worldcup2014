SELECT
    p.kickoff,
    c1.name AS home_team,
    (SELECT
        COUNT(*)
    FROM
        goals g
    WHERE
        g.pairing_id = p.id AND g.player_id IN (SELECT id FROM players WHERE country_id = c1.id)) AS home_score
    -- (SELECT
    --     COUNT(*)
    -- FROM
    --     goals g
    -- WHERE
    --     g.pairing_id = p.id AND g.player_id IN (SELECT id FROM players WHERE country_id = c2.id)) AS away_score,
    -- c2.name AS away_team
FROM
    pairings p
JOIN
    countries c1 ON p.my_country_id = c1.id
JOIN
    countries c2 ON p.enemy_country_id = c2.id
WHERE
    (c1.name = '日本' AND c2.name = 'コロンビア')
    OR (c1.name = 'コロンビア' AND c2.name = '日本');