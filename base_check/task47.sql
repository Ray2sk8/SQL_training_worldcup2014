SELECT
    p.name,
    SUBSTRING(p.position, 1, 1) AS position
FROM
    players p
