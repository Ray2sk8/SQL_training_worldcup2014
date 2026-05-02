SELECT
    p.name,
    p.height,
    p.weight
FROM
    players p
ORDER BY
    p.height DESC,
    p.weight DESC;