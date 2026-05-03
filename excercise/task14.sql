SELECT
    c1.name AS my_country,
    COUNT(CASE WHEN pl.country_id = pa.my_country_id THEN 1 END) AS my_score,
    'VS' AS vs,
    COUNT(CASE WHEN pl.country_id = pa.enemy_country_id THEN 1 END) AS enemy_score,
    c2.name AS enemy_country
FROM
    pairings pa
JOIN
    countries c1 ON pa.my_country_id = c1.id
JOIN
    countries c2 ON pa.enemy_country_id = c2.id
LEFT JOIN
    goals g ON pa.id = g.pairing_id
LEFT JOIN
    players pl ON g.player_id = pl.id
WHERE
    c1.group_name = 'C'
    AND c2.group_name = 'C'
GROUP BY
    pa.id, c1.name, c2.name, pa.kickoff
ORDER BY
    c1.name ASC;