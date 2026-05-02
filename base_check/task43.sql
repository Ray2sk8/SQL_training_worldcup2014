SELECT
    p.name,
    p.club,
    p.height,
    p.weight,
    (p.weight + p.height) AS total
FROM
    players p
ORDER BY
    total DESC;