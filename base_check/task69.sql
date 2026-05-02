SELECT
    c.group_name,
    MAX(c.ranking) AS weakest_ranking,
    MIN(c.ranking) AS strongest_ranking
FROM
    countries c
GROUP BY
    c.group_name
HAVING
    MAX(c.ranking) - MIN(c.ranking) > 50;