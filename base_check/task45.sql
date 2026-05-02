SELECT
    p.name,
    p.birth,
    TIMESTAMPDIFF(YEAR, birth, CURDATE()) AS age
FROM
    players p
ORDER BY
    p.birth DESC;