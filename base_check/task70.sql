SELECT
    '1980' AS birth_year,
    COUNT(*) AS num
FROM
    players p
WHERE
    p.birth BETWEEN '1980-01-01' AND '1980-12-31'
UNION ALL
SELECT
    '1981' AS birth_year,
    COUNT(*) AS num
FROM
    players p
WHERE
    p.birth BETWEEN '1981-01-01' AND '1981-12-31'
