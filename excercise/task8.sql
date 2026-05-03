-- positionごとのゴール数を取得するクエリ
SELECT
    p.position,
    IFNULL(SUM(g.id), 0) AS total_goals
FROM
    players p
LEFT JOIN
    goals g ON p.id = g.player_id
GROUP BY
    p.position
ORDER BY
    total_goals DESC;