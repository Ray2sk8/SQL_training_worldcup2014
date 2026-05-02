SELECT
    p.name,
    p.position,
    p.height
FROM
    players p
WHERE
    p.height <= 170 AND (p.position = "MF" OR p.position = "FW")
ORDER BY
    p.position ASC,
    p.height ASC