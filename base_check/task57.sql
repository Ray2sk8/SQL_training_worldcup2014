SELECT
    SUM(c.ranking) AS total_ranking
FROM
    countries c
WHERE
    c.group_name = 'C';