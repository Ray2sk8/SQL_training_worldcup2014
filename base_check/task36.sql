SELECT
    c.name,
    c.group_name
FROM
    countries c
WHERE
    NOT c.group_name = "C"