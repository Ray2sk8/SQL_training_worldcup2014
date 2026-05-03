SELECT
    p.kickoff
FROM
    pairings p
    INNER JOIN countries c1 ON p.my_country_id = c1.id
    INNER JOIN countries c2 ON p.enemy_country_id = c2.id
WHERE
    c1.name = 'ブラジル'
    AND c2.name = 'クロアチア';