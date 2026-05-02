SELECT
    p.id,
    p.name,
    p.height,
    p.weight
FROM
    players p
WHERE
    p.height > 195
UNION ALL
SELECT
    p.id,
    p.name,
    p.height,
    p.weight
FROM
    players p
WHERE
    p.weight > 95
ORDER BY
    id ASC;