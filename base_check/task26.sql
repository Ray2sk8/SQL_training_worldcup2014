SELECT
    c.name,
    c.group_name
FROM
    countries c
WHERE
    c.group_name = "C"

ORDER BY
    c.group_name