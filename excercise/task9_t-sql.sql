SELECT
    p.name,
    p.birth,
    DATEDIFF(year, p.birth, '2014-06-13') -
    CASE
        WHEN DATEADD(year, DATEDIFF(year, p.birth, '2014-06-13'), p.birth) > '2014-06-13'
        THEN 1
        ELSE 0
    END AS age
FROM
    players p