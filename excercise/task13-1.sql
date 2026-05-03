-- the number of goals scored of Japan in the match against Colombia
SELECT
    c.name AS country_name,
    COUNT(g.id) AS score
FROM
    pairings p
JOIN
    countries c_home ON p.my_country_id = c_home.id
JOIN
    countries c_away ON p.enemy_country_id = c_away.id
JOIN
    countries c ON c.name = '日本'
LEFT JOIN
    players pl ON pl.country_id = c.id
LEFT JOIN
    goals g ON g.pairing_id = p.id AND g.player_id = pl.id
WHERE
    (c_home.name = '日本' AND c_away.name = 'コロンビア')
GROUP BY
    p.id, c.name;


-- the number of goals scored of Colombia in the match against Japan
SELECT
    c.name AS country_name,
    COUNT(g.id) AS score
FROM
    pairings p
JOIN
    countries c_home ON p.my_country_id = c_home.id
JOIN
    countries c_away ON p.enemy_country_id = c_away.id
JOIN
    countries c ON c.name = 'コロンビア'
LEFT JOIN
    players pl ON pl.country_id = c.id
LEFT JOIN
    goals g ON g.pairing_id = p.id AND g.player_id = pl.id
WHERE
    (c_home.name = 'コロンビア' AND c_away.name = '日本')
GROUP BY
    p.id, c.name;
