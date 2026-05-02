-- SELECT
--     MAX(p.height) AS max_height,
--     MAX(p.weight) AS max_weight
-- FROM
--     players p







SELECT
    'Tallest' AS category, players.*
FROM
    players
WHERE
    height = (SELECT MAX(height) FROM players)
UNION ALL
SELECT
    'Heaviest' AS category, players.*
FROM
    players
WHERE
    weight = (SELECT MAX(weight) FROM players);