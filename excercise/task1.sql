SELECT
    c.name,
    c.ranking,
    c.group_name
FROM
    countries c
WHERE
    c.ranking = (SELECT MAX(ranking) FROM countries WHERE group_name = c.group_name)
    OR c.ranking = (SELECT MIN(ranking) FROM countries WHERE group_name = c.group_name)
ORDER BY
    c.group_name ASC,
    c.ranking ASC;
