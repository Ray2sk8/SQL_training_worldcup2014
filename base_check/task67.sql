SELECT
    p1.position,
    MAX(p1.height) AS MAX_height,
    (
        SELECT
            p2.name
        FROM
            players p2
        WHERE
            p1.position = p2.position AND MAX(p1.height) = p2.height
    ) AS name

FROM
    players p1
GROUP BY
    p1.position
ORDER BY
    p1.position ASC;