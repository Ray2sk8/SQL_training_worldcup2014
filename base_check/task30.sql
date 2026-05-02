WITH jpn_rank AS (
    SELECT c.ranking AS r
    FROM countries c
    WHERE name = '日本'
)
SELECT
    c.name,
    c.ranking
FROM
    countries c,
    jpn_rank j
WHERE
    (c.ranking BETWEEN j.r -10 AND j.r + 10) AND c.name != '日本'
ORDER BY
    c.ranking ASC


-- SELECT
--     c.name,
--     c.ranking
-- FROM
--     countries c
-- ORDER BY
--     c.ranking ASC