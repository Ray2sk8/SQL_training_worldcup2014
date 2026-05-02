SELECT
    c.name,
    c.ranking
FROM
    countries c
WHERE
    c.ranking = (SELECT MIN(ranking) FROM countries WHERE group_name = 'A') AND c.group_name = 'A';