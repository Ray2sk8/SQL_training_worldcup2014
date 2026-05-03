SELECT
    c.name,
    (
        SELECT
            AVG(p.height)
        FROM
            players p
        WHERE
            p.country_id = c.id
    ) AS average_height
FROM
    countries c
GROUP BY
    c.id
ORDER BY
    average_height DESC;