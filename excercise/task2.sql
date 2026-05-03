SELECT
    AVG(p.height) AS average_height,
    AVG(p.weight) AS average_weight
FROM
    players p
WHERE
    p.position = 'GK';