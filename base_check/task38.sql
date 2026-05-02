SELECT
    p.name,
    p.height,
    p.weight
FROM
    players p
WHERE
    p.height < 165 OR p.weight < 60
ORDER BY
    p.height ASC,
    p.weight ASC