SELECT
    group_name,
    MAX(CASE WHEN rank_asc = 1 THEN name END) AS strong_country,
    MAX(CASE WHEN rank_desc = 1 THEN name END) AS weak_country
FROM (
    SELECT
        name,
        group_name,
        ranking,
        RANK() OVER (PARTITION BY group_name ORDER BY ranking ASC) AS rank_asc,
        RANK() OVER (PARTITION BY group_name ORDER BY ranking DESC) AS rank_desc,
        MAX(ranking) OVER (PARTITION BY group_name) AS max_r,
        MIN(ranking) OVER (PARTITION BY group_name) AS min_r
    FROM
        countries
) AS ranked_data
WHERE
    max_r - min_r > 50
GROUP BY
    group_name;