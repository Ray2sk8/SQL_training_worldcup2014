SELECT
    p1.position,
    p1.MAX_height,
    p2.name,
    p2.club

FROM
    (SELECT
        position,
        MAX(height) AS MAX_height
    FROM
        players
    GROUP BY
        position) AS p1
    INNER JOIN
        players p2
    ON
        p1.position = p2.position AND p1.MAX_height = p2.height
ORDER BY
    p1.position ASC;