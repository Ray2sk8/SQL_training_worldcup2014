SELECT
    p.name,
    p.position,
    p.birth,
    TIMESTAMPDIFF(YEAR, birth, CURDATE()) AS age
FROM
    players p
WHERE
    TIMESTAMPDIFF(YEAR, birth, CURDATE()) >= 40
ORDER BY
    age ASC
