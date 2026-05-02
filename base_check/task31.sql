SELECT
    p.name,
    p.position,
    TIMESTAMPDIFF(YEAR, birth, CURDATE()) AS age
FROM
    players p
WHERE
    p.position IN ('FW', 'MF', 'GK' )
ORDER BY
    p.position ASC,
    age ASC