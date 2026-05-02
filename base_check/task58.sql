SELECT
    p.name,
    p.uniform_num,
    c.name
FROM
    players p INNER JOIN countries c ON p.country_id = c.id

ORDER BY
    c.name,
    p.uniform_num ASC;