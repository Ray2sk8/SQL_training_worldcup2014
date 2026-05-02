SELECT
    p.name,
    p.height
FROM
    players p
WHERE
    p.height <= 170
ORDER BY
    p.height ASC
