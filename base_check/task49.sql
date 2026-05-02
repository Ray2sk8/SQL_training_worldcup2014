SELECT
    p.name,
    p.birth,
    CONCAT( YEAR(p.birth), '年', MONTH(p.birth), '月', DAY(p.birth), '日') AS birth_date
FROM
    players p
ORDER BY
    p.birth DESC;