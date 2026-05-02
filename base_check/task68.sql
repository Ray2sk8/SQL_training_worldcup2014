SELECT
    p1.name,
    p1.uniform_num,
    p1.position,
    p1.height
FROM
    players p1
WHERE
    p1.height < (SELECT AVG(height) FROM players)
ORDER BY
    p1.height ASC,
    p1.uniform_num ASC;