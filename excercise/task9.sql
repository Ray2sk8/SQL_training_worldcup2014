SELECT
    p.name,
    p.birth,
    TIMESTAMPDIFF(YEAR, p.birth, '2014-06-13') AS age
FROM
    players p
ORDER BY
    age DESC,
    p.name ASC;